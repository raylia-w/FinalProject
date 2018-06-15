package mvc.service;

import java.util.List;

import mvc.dto.ChatDto;

public interface ChatService {

	
	public void insertChat(ChatDto dto);
	public List<ChatDto>  selectChat(String chatRoom);
}
