.class public Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;
.super Ljava/lang/Object;
.source "RecordMessageDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_CHAT:Ljava/lang/String; = "create table if not exists %s(message_id INTEGER primary key autoincrement,user_id TEXT,message_type INTEGER NOT NULL,message_content TEXT,create_time INTEGER NOT NULL,modify_time INTEGER NOT NULL,attachment TEXT,error_content INTEGER)"

.field private static final DROP_TABLE_CHAT:Ljava/lang/String; = "drop table if exists %s"

.field private static final ROW_ATTACHMENT:Ljava/lang/String; = "attachment"

.field private static final ROW_CREATE_TIME:Ljava/lang/String; = "create_time"

.field private static final ROW_ERROR_CONTENT:Ljava/lang/String; = "error_content"

.field private static final ROW_MESSAGE_CONTENT:Ljava/lang/String; = "message_content"

.field private static final ROW_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field private static final ROW_MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field private static final ROW_MODIFY_TIME:Ljava/lang/String; = "modify_time"

.field private static final ROW_USER_ID:Ljava/lang/String; = "user_id"

.field private static final TAG:Ljava/lang/String; = "RecordMessageDao"

.field private static chatDaoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private op:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

.field private scene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->chatDaoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->scene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    .line 69
    new-instance p1, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;-><init>(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    .line 70
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->init()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getTableName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Landroid/content/ContentValues;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->toContentValues(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 85
    :try_start_0
    const-string v0, "create table if not exists %s(message_id INTEGER primary key autoincrement,user_id TEXT,message_type INTEGER NOT NULL,message_content TEXT,create_time INTEGER NOT NULL,modify_time INTEGER NOT NULL,attachment TEXT,error_content INTEGER)"

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getTableName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 78
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->values()[Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 79
    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    move-result-object v3

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;
    .locals 4

    const-class v0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->chatDaoMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->getSceneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 62
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->chatDaoMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->getSceneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;-><init>(Lcn/nubia/redmagickyi/morachat/main/scene/Scene;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->chatDaoMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->getSceneId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTableName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->scene:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->getSceneId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "message_record_%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " set error_content = 2 where message_id in (select message_id from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " order by message_id desc limit 2) and error_content = 3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->executeSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method private toChatMessage(Landroid/database/Cursor;)Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;
    .locals 5

    .line 241
    const-string p0, "RecordMessageDao"

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>()V

    .line 242
    const-string v2, "message_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setMessageId(Ljava/lang/String;)V

    .line 243
    const-string v2, "user_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/utils/AESUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setUserId(Ljava/lang/String;)V

    .line 244
    const-string v2, "message_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setMessageType(I)V

    .line 245
    const-string v2, "create_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setCreateTime(J)V

    .line 246
    const-string v2, "modify_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setModifyTime(J)V

    .line 247
    const-string v2, "attachment"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/utils/AESUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setAttachmentFull(Ljava/lang/String;)V

    .line 248
    const-string v2, "error_content"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setExecuteCode(I)V

    .line 249
    const-string v2, "message_content"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/utils/AESUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 272
    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setMessageContent(Ljava/lang/String;)V

    goto :goto_1

    .line 252
    :cond_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    invoke-virtual {v2, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    .line 253
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    const-string v1, "toMsgData msg is null!!!"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcn/nubia/redmagickyi/util/Logs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 257
    :cond_1
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result p1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    const/4 v4, 0x5

    if-eq p1, v4, :cond_2

    .line 266
    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    .line 262
    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    .line 259
    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setExecutStatus(I)V

    .line 269
    :goto_0
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->setReceivedMsgEntry(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;)V

    .line 275
    :goto_1
    const-string p1, "toChatMessage={}"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 278
    const-string v1, "toChatMessage"

    invoke-static {p0, v1, p1}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private toContentValues(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Landroid/content/ContentValues;
    .locals 3

    .line 219
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 220
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/utils/AESUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "message_type"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getCreateTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "create_time"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getModifyTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "modify_time"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getAttachmentFull()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getAttachmentFull()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/utils/AESUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "attachment"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getExecuteCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "error_content"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageType()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "message_content"

    if-eq v0, v1, :cond_1

    .line 231
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/utils/AESUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 228
    :cond_1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/utils/AESUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method


# virtual methods
.method public declared-synchronized deleteMessage(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 3

    monitor-enter p0

    .line 213
    :try_start_0
    const-string v0, "%s = ?"

    const-string v1, "message_id"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 214
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 215
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->delete(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dropTable()V
    .locals 2

    .line 92
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/database/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 94
    :try_start_0
    const-string v1, "drop table if exists %s"

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->getTableName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    :cond_1
    throw p0
.end method

.method public declared-synchronized getMessages()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 115
    :try_start_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 118
    :try_start_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 119
    new-instance v2, Landroid/database/CursorWindow;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0xa00000

    invoke-direct {v2, v3, v4, v5}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    .line 120
    move-object v3, v1

    check-cast v3, Landroid/database/AbstractWindowedCursor;

    .line 121
    invoke-virtual {v3, v2}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 122
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/database/AbstractWindowedCursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->toChatMessage(Landroid/database/Cursor;)Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 132
    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 129
    :try_start_3
    const-string v3, "RecordMessageDao"

    const-string v4, "getMessages: "

    invoke-static {v3, v4, v2}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    .line 135
    :cond_2
    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    if-eqz v1, :cond_3

    .line 132
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMessagesByTimeline(JI)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RecordMessageDao"

    const-string v2, "getMessagesByTimeline createTime={}, limit={}"

    invoke-static {v1, v2, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 141
    const-string v2, "create_time"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%s < ?"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x1

    .line 142
    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    .line 143
    const-string p1, "%s DESC"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 p1, 0x0

    .line 146
    :try_start_0
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v10}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 148
    new-instance p2, Landroid/database/CursorWindow;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    const-wide/32 v2, 0xa00000

    invoke-direct {p2, p3, v2, v3}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;J)V

    .line 149
    move-object p3, p1

    check-cast p3, Landroid/database/AbstractWindowedCursor;

    .line 150
    invoke-virtual {p3, p2}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p3}, Landroid/database/AbstractWindowedCursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 152
    invoke-direct {p0, p3}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->toChatMessage(Landroid/database/Cursor;)Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 154
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_1
    new-instance p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    goto :goto_1

    .line 160
    :cond_2
    const-string p0, "getMessagesByTimeLime ac is null!!!"

    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 163
    :try_start_1
    const-string p2, "getMessagesByTimeLime: "

    invoke-static {v1, p2, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 166
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :goto_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_4
    throw p0
.end method

.method public getMessagesCountByTimeline(J)I
    .locals 9

    .line 173
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RecordMessageDao"

    const-string v2, "getMessagesCountByTimeline createTime={}"

    invoke-static {v1, v2, v0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 175
    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "count(*)"

    const/4 v8, 0x0

    aput-object v2, v3, v8

    .line 176
    const-string v2, "create_time"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "%s < ?"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 177
    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v8

    const/4 p1, 0x0

    .line 180
    :try_start_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 183
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    move v8, p0

    goto :goto_0

    .line 186
    :cond_0
    const-string p0, "getMessagesCountByTimeline cursor is null!!!"

    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 192
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 189
    :try_start_1
    const-string p2, "getMessagesCountByTimeline: "

    invoke-static {v1, p2, p0}, Lcn/nubia/redmagickyi/util/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return v8

    :goto_3
    if-eqz p1, :cond_3

    .line 192
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 194
    :cond_3
    throw p0
.end method

.method public declared-synchronized insertMessage(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 1

    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->insert(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertMessage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->insert(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateMessage(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 4

    monitor-enter p0

    .line 207
    :try_start_0
    const-string v0, "%s = ?"

    const-string v1, "message_id"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 208
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 209
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao;->op:Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;

    invoke-virtual {v2, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/main/database/record/RecordMessageDao$Op;->update(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
