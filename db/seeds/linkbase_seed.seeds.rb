Category.create!([
  {id: 1, name: "Social Media", comment: "All the Social Sites", created_at: "2015-08-23 01:57:24", updated_at: "2015-08-23 01:57:24", user_id: 1},
  {id: 2, name: "Search", comment: "The Best Search engine", created_at: "2015-08-23 02:20:43", updated_at: "2015-08-23 02:20:43", user_id: 1},
  {id: 3, name: "Finance", comment: "Dat Money", created_at: "2015-08-24 02:16:47", updated_at: "2015-08-24 02:16:47", user_id: 1}
])
Link.create!([
  {id: 1, name: "Facebook", url: "http://facebook.com", window: "_blank", created_at: "2015-08-23 01:58:58", updated_at: "2015-08-23 01:58:58", user_id: 1, category_id: 1},
  {id: 2, name: "LinkedIN", url: "http://linkedin.com", window: "_blank", created_at: "2015-08-23 01:59:22", updated_at: "2015-08-23 01:59:22", user_id: 1, category_id: 1},
  {id: 4, name: "Google", url: "http://google.com", window: "_blank", created_at: "2015-08-23 02:32:14", updated_at: "2015-08-23 02:32:14", user_id: 1, category_id: 2}
])
