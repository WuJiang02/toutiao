package com.nowcoder.service;

import com.nowcoder.util.JedisAdapter;
import com.nowcoder.util.RedisKeyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LikeService {
    @Autowired
    JedisAdapter jedisAdapter;

    /**
     * 1：喜欢
     * -1：不喜欢
     * 0：
     * @param userId
     * @param entityId
     * @param entityType
     * @return
     */
    public int getLikeStatus(int userId,int entityId,int entityType){
        String likeKey= RedisKeyUtil.getLikeKey(entityId,entityType);
        if(jedisAdapter.sismember(likeKey,String.valueOf(userId))){
            return 1;
        }
        String disLikeKey=RedisKeyUtil.getDisLikeKey(entityId,entityType);
        return jedisAdapter.sismember(disLikeKey,String.valueOf(userId))?-1:0;
    }

    public long Like(int userId,int entityType,int entityId){
        String likeKey= RedisKeyUtil.getLikeKey(entityId,entityType);
        jedisAdapter.sadd(likeKey,String.valueOf(userId));

        String disLikeKey= RedisKeyUtil.getDisLikeKey(entityId,entityType);
        jedisAdapter.srem(disLikeKey,String.valueOf(userId));

        return jedisAdapter.scard(likeKey);
    }

    public long disLike(int userId,int entityType,int entityId){
        String dislikeKey= RedisKeyUtil.getDisLikeKey(entityId,entityType);
        jedisAdapter.sadd(dislikeKey,String.valueOf(userId));

        String LikeKey= RedisKeyUtil.getLikeKey(entityId,entityType);
        jedisAdapter.srem(LikeKey,String.valueOf(userId));

        return jedisAdapter.scard(LikeKey);
    }
}
