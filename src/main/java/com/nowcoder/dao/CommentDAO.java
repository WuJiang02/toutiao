package com.nowcoder.dao;

import com.nowcoder.model.Comment;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;
@Component
@Mapper
public interface CommentDAO {
    String TABLE_NAME="comment";
    String INSERT_FIELDS=" userId, entityId, entityType, content, createdDate, status";
    String SELECT_FIELDS="id, "+INSERT_FIELDS;

    @Update({"update ",TABLE_NAME,"set status=#{status} where entityId=#{entityId} and entityType=#{entityType}"})
    void updateStatus(@Param("entityId")int entityId,@Param("entityType")int entityType,@Param("status")int status);

    @Insert({"insert into ",TABLE_NAME,"(",INSERT_FIELDS,") values (#{userId},#{entityId},#{entityType},#{content},#{createdDate},#{status})"})
    int addComment(Comment comment);

    @Select({"select", SELECT_FIELDS,"from ",TABLE_NAME,"where entityId=#{entityId} and entityType=#{entityType} order by id desc"})
    List<Comment> selectByEntity(@Param("entityId") int entityId, @Param("entityType") int entityType);

    @Select({"select count(id) from",TABLE_NAME,"where entityId=#{entityId} and entityType=#{entityType}"})
    int getCommentCount(@Param("entityId") int entityId,@Param("entityType") int entityType);
}
