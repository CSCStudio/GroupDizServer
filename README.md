#GDIZServer 


### tables structure

users
=========
|id | nickname | identifier |

topics
=========
|id | title | description | creator_id | code|

topic_participants
=========
|topic_id | user_id |

points
=========
|id | title | description | topic_id | user_id |

votes
=========
| user_id | point_id | kind | 