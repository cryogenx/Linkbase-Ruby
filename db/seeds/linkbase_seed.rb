Category.create!([
  {id: 2, name: "Social Media", comment: "Wasting time", created_at: "2015-09-10 13:00:57", updated_at: "2015-09-10 13:00:57", user_id: 5}
])
Link.create!([
  {id: 5, name: "LinkedIN", url: "http://linkedin.com", window: "_blank", created_at: "2015-09-10 13:27:26", updated_at: "2015-09-10 13:27:26", user_id: 5, category_id: 2},
  {id: 4, name: "Facebook", url: "http://facebook.com", window: "_blank", created_at: "2015-09-10 13:01:16", updated_at: "2015-09-10 16:23:57", user_id: 5, category_id: 2}
])
