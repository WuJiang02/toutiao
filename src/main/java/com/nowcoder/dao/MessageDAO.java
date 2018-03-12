package com.nowcoder.dao;

import com.nowcoder.model.Message;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MessageDAO {
    String TABLE_NAME="message";
    String INSERT_FIELDS=" fromId, toId, content,hasRead, conversationId, createdDate";
    String SELECT_FIELDS="id, "+INSERT_FIELDS;

    @Insert({"insert into ",TABLE_NAME,"(",INSERT_FIELDS,") values (#{fromId},#{toId},#{content},#{hasRead},#{conversationId},#{createdDate})"})
    int addMessage(Message message);

    @Select({"select",SELECT_FIELDS,"from",TABLE_NAME,"where conversationId=#{conversationId} order by id desc limit #{offset},#{limit}"})
    List<Message> getConversationDetail(@Param("conversationId")String conversationId,
                                        @Param("offset")int offset,
                                        @Param("limit")int limit);

    @Select({"select ",INSERT_FIELDS,", count(id) as id from ( select * from ",TABLE_NAME," where fromId=#{userId} or toId=#{userId} order by id desc) tt group by conversationId order by id desc limit #{offset},#{limit}"})
    List<Message> getConversationList(@Param("userId")int userId,
                                        @Param("offset")int offset,
                                        @Param("limit")int limit);

    @Select({"select count(id) from ", TABLE_NAME," where hasRead=0 and toId=#{userId} and conversationId=#{conversationId}"})
    int getConvesationUnreadCount(@Param("userId")int userId,@Param("conversationId")String conversationId);
}
