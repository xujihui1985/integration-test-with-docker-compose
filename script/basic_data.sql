CREATE TABLE users (
  id int NOT NULL,
  name VARCHAR(120) NOT NULL,
  display_name VARCHAR(120) NOT NULL,
  is_active VARCHAR(120) NOT NULL
);

INSERT INTO users(id, name, display_name, is_active) 
VALUES
  (1, 'jihui.xjh', 'mutao', 'tru'),
  (2, 'sean', 'mutao111', 'true');