-- Password: root; Salt: Pxw3a7FnlWlaUZpy
INSERT INTO public.app_user (id, username, password, enabled) VALUES ('201d16d5-d08d-43f0-ab81-ce79836d24e0', 'root', '$argon2i$v=19$m=1024,t=20,p=10$UHh3M2E3Rm5sV2xhVVpweQ$pDpNbGynNQQCDUGuGGm38jJNjc4+EvHgV4IohhcwF33rpeIaXdPGwkX0TNEAVxFe8FlHoNSgw0D1yrET3boc0Z5smB+hafpLpFbmyuHfNOZc0O+uuPfO9FGFLhYS6/RzKRfiaA', true);

-- Password: admin; Salt: iHU3SaDvzW4wqsoy
INSERT INTO public.app_user (id, username, password, enabled) VALUES ('538874f5-c6c8-47d7-a3a0-b4524994638c', 'admin', '$argon2i$v=19$m=1024,t=20,p=10$aUhVM1NhRHZ6VzR3cXNveQ$nywiOW04hTPes7J0P7qTIdpbTO3pp7H8t5A7PZwTKgSNDLoGhbJ+OvLuwat3/xGhghf897vUT9jOs1rRMqDleJLe5ZKhUApGJWDY4+668111JVdO7fHkA3o5jhoSayOpnioFSg', true);

-- Password: operator; Salt: rlQThB9J4Tjv18qE
INSERT INTO public.app_user (id, username, password, enabled) VALUES ('a3cc9c5d-610a-471c-b217-769d326d5d22', 'operator', '$argon2i$v=19$m=1024,t=20,p=10$cmxRVGhCOUo0VGp2MThxRQ$aZLtDCdAxydnI0u9RdS+1v23tdnRoadaN1h1onHxciM0hmK5ektR3a08rpNHunsew/jYtpZXsHE+DroIUtjvWkmu4ErEvIaS75KJWz/W40j6R/AzN+GRN1TmA2RjX6ih5MQu3g', true);

INSERT INTO public.permission (id, name, description) VALUES ('d4551efb-265f-4d4b-94d4-8e192418ebea', 'USER_CREATE', 'Allow to create new users');
INSERT INTO public.permission (id, name, description) VALUES ('f15eca55-39be-46c8-ac69-466320f786e4', 'USER_REMOVE', 'Allow to remove an existing user');
INSERT INTO public.permission (id, name, description) VALUES ('1d8cbfc5-fa4a-4f10-8c34-71051e8222ff', 'USER_CHANGE_PASSWORD', 'Allow to change the user passwords');
INSERT INTO public.permission (id, name, description) VALUES ('6f7cab0d-c5eb-477b-9471-00923dfac8fc', 'USER_RENAME', 'Allow to change the user name');
INSERT INTO public.permission (id, name, description) VALUES ('73dbae7c-c9ef-4137-8516-4d229d5ad0ea', 'USER_VIEW', 'Allow to view the users list');
INSERT INTO public.permission (id, name, description) VALUES ('44411aca-6c8d-4f92-ab65-de79ed1fa135', 'PERMISSION_VIEW', 'Allow to view the permissions list');
INSERT INTO public.permission (id, name, description) VALUES ('458a595c-b66c-4e8e-b774-599ccc3e71a5', 'ROLE_VIEW', 'Allow to view the roles list');

INSERT INTO public.role (id, name, description) VALUES ('576d1b24-5e67-4e19-a7b0-9260ea214372', 'ROLE_ROOT', 'User with full access');
INSERT INTO public.role (id, name, description) VALUES ('f0209399-bf30-4653-828d-318900254483', 'ROLE_ADMIN', 'User with administrative permissions');
INSERT INTO public.role (id, name, description) VALUES ('7dbd4790-1f3d-4936-95bd-2bb936b4d9f9', 'ROLE_OPERATOR', 'User with read-only permissions');

-- Assign: ROLE_ROOT -> USER_CREATE, USER_REMOVE, USER_CHANGE_PASSWORD, USER_RENAME, USER_VIEW, PERMISSION_VIEW, ROLE_VIEW
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('6aa883b6-c7d4-499f-af2f-b9695c2ae784', '576d1b24-5e67-4e19-a7b0-9260ea214372', 'd4551efb-265f-4d4b-94d4-8e192418ebea');
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('6af857aa-ff9b-46f7-85b8-46700f215a8b', '576d1b24-5e67-4e19-a7b0-9260ea214372', '1d8cbfc5-fa4a-4f10-8c34-71051e8222ff');
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('0818fc62-4e01-4864-bf34-a9ba2876e7ee', '576d1b24-5e67-4e19-a7b0-9260ea214372', '6f7cab0d-c5eb-477b-9471-00923dfac8fc');
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('a3070b22-2210-4811-8f5f-8c5b70277a81', '576d1b24-5e67-4e19-a7b0-9260ea214372', 'f15eca55-39be-46c8-ac69-466320f786e4');
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('ab8758c6-d211-48aa-bde6-f0a2c196fbfa', '576d1b24-5e67-4e19-a7b0-9260ea214372', '73dbae7c-c9ef-4137-8516-4d229d5ad0ea');
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('99582b83-bf7a-4bad-ab76-564de700732f', '576d1b24-5e67-4e19-a7b0-9260ea214372', '44411aca-6c8d-4f92-ab65-de79ed1fa135');
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('9a09c803-6c5f-4bfe-8be6-c71a0f7dab6a', '576d1b24-5e67-4e19-a7b0-9260ea214372', '458a595c-b66c-4e8e-b774-599ccc3e71a5');

-- Assign: ROLE_ADMIN -> USER_CHANGE_PASSWORD, USER_RENAME, USER_VIEW, PERMISSION_VIEW, ROLE_VIEW
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('62587203-df7c-4528-9249-436692440e90', 'f0209399-bf30-4653-828d-318900254483', '1d8cbfc5-fa4a-4f10-8c34-71051e8222ff');
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('c9f87ae2-9412-4cda-ad49-9966edb08e19', 'f0209399-bf30-4653-828d-318900254483', '6f7cab0d-c5eb-477b-9471-00923dfac8fc');
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('4a826a39-b448-45d3-89b2-7b2d46f0bd45', 'f0209399-bf30-4653-828d-318900254483', '73dbae7c-c9ef-4137-8516-4d229d5ad0ea');
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('051cc918-c185-4157-bc54-f734268f7fe4', 'f0209399-bf30-4653-828d-318900254483', '44411aca-6c8d-4f92-ab65-de79ed1fa135');
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('c888de16-1677-4db0-9e34-011dec22fd5a', 'f0209399-bf30-4653-828d-318900254483', '458a595c-b66c-4e8e-b774-599ccc3e71a5');

-- Assign: ROLE_OPERATOR -> USER_VIEW, PERMISSION_VIEW, ROLE_VIEW
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('b1b5f0cb-fe50-4a0b-ad88-e6e3a748c973', '7dbd4790-1f3d-4936-95bd-2bb936b4d9f9', '73dbae7c-c9ef-4137-8516-4d229d5ad0ea');
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('3079c956-8a15-4de4-9dcd-d0d51eae2fb7', '7dbd4790-1f3d-4936-95bd-2bb936b4d9f9', '44411aca-6c8d-4f92-ab65-de79ed1fa135');
INSERT INTO public.role_permission (id, role_id, permisison_id) VALUES ('cec9aebd-2af4-4610-b619-30ca966bb9c8', '7dbd4790-1f3d-4936-95bd-2bb936b4d9f9', '458a595c-b66c-4e8e-b774-599ccc3e71a5');

-- Assign: root -> ROLE_ROOT
INSERT INTO public.user_role (id, user_id, role_id) VALUES ('9a2419b5-a2b5-403c-8d05-1404bb13a12d', '201d16d5-d08d-43f0-ab81-ce79836d24e0', '576d1b24-5e67-4e19-a7b0-9260ea214372');

-- Assign: admin -> ROLE_ADMIN
INSERT INTO public.user_role (id, user_id, role_id) VALUES ('ee38c571-d28f-4c82-8582-4e62ea266b8c', '538874f5-c6c8-47d7-a3a0-b4524994638c', 'f0209399-bf30-4653-828d-318900254483');

-- Assign: operator -> ROLE_OPERATOR
INSERT INTO public.user_role (id, user_id, role_id) VALUES ('b1f60ebc-6edf-4689-9346-7685f1a7e4ea', 'a3cc9c5d-610a-471c-b217-769d326d5d22', '7dbd4790-1f3d-4936-95bd-2bb936b4d9f9');
