package com.nowcoder.util;

import com.alibaba.fastjson.JSON;
import org.omg.CORBA.Object;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.stereotype.Service;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import java.util.List;

@Service
public class JedisAdapter implements InitializingBean{

    private JedisPool pool;
    private static final Logger logger = LoggerFactory.getLogger(JedisAdapter.class);
    private Jedis jedis;


    @Override
    public void afterPropertiesSet() throws Exception {
        pool=new JedisPool("localhost",6379);
    }

    public List<String> brpop(int timeout,String key){
        Jedis jedis=null;
        try{
            jedis=pool.getResource();
            return jedis.brpop(timeout,key);
        }catch (Exception e){
            logger.error("发生异常"+e.getMessage());
            return null;
        }finally {
            if(jedis!=null){
                jedis.close();
            }
        }
    }

    public long lpush(String key,String value){
        Jedis jedis=null;
        try{
            jedis=pool.getResource();
            return jedis.lpush(key,value);
        }catch (Exception e){
            logger.error("发生异常"+e.getMessage());
            return 0;
        }finally {
            if(jedis!=null){
                jedis.close();
            }
        }
    }
    public static void print(int index,Object obj) {
        System.out.println(String.format("%d,%s",index,obj.toString()));
    }

    public void setObject(String key, Object obj){
        Jedis jedis=pool.getResource();
        jedis.set(key, JSON.toJSONString(obj));
        if(jedis!=null){
            jedis.close();
        }
    }

    public <T> T getObject(String key,Class<T> clazz){
        Jedis jedis=pool.getResource();
        try{
            String value=jedis.get(key);
            if(value!=null){
                return JSON.parseObject(value,clazz);
            }
            return null;
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }finally {
            if(jedis!=null){
                jedis.close();
            }
        }
    }
   /* public void set(String key,String value){

    }
    public static void main(String[] args) {
        Jedis jedis=new Jedis();
        jedis.flushAll();
    }*/



    public boolean sismember(String key,String value){
            Jedis jedis=null;
        try{
            jedis=pool.getResource();
            return jedis.sismember(key,value);
        }catch (Exception e){
            logger.error("发生异常"+e.getMessage());
            return false;
        }finally {
            if(jedis!=null){
                jedis.close();
            }
        }
    }

    public long sadd(String key,String value){
        Jedis jedis=null;
        try{
            jedis=pool.getResource();
            return jedis.sadd(key,value);
        }catch (Exception e){
            logger.error("发生异常"+e.getMessage());
            return 0;
        }finally {
            if(jedis!=null){
                jedis.close();
            }
        }
    }

    public long srem(String key,String value){
        Jedis jedis=null;
        try{
            jedis=pool.getResource();
            return jedis.srem(key,value);
        }catch (Exception e){
            logger.error("发生异常"+e.getMessage());
            return 0;
        }finally {
            if(jedis!=null){
                jedis.close();
            }
        }
    }

    public long scard(String key){
        Jedis jedis=null;
        try{
            jedis=pool.getResource();
            return jedis.scard(key);
        }catch (Exception e){
            logger.error("发生异常"+e.getMessage());
            return 0;
        }finally {
            if(jedis!=null){
                jedis.close();
            }
        }
    }

    private Jedis getJedis(){
        return pool.getResource();
    }
}
