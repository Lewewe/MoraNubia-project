.class public Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;
.super Ljava/lang/Object;
.source "LiveCalenderLocalDataManager.java"


# static fields
.field private static final IMAGE_DIR_PATH:Ljava/lang/String;

.field private static final KEY_LIST:Ljava/lang/String; = "list"

.field private static final KEY_LIST_CHANGED:Ljava/lang/String; = "list_changed"

.field private static instance:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;


# instance fields
.field private gson:Lcom/google/gson/Gson;

.field private localProperties:Ljava/util/Properties;

.field private propertyFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    sget-object v0, Lcn/nubia/redmagickyi/network/NetConfig;->CACHE_SUB_DIRS:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    sput-object v0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->IMAGE_DIR_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->gson:Lcom/google/gson/Gson;

    .line 46
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->IMAGE_DIR_PATH:Ljava/lang/String;

    const-string v2, "cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->propertyFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->initProperties(Ljava/io/File;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->localProperties:Ljava/util/Properties;

    return-void
.end method

.method private get(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->localProperties:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;
    .locals 1

    .line 39
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->instance:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->instance:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;

    .line 42
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->instance:Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;

    return-object v0
.end method

.method private initProperties(Ljava/io/File;)Ljava/util/Properties;
    .locals 2

    .line 50
    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 55
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 57
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 59
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 69
    :catch_0
    :cond_1
    throw p0

    :catch_1
    move-object v1, v0

    :catch_2
    if-eqz v1, :cond_2

    .line 65
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    move-object p0, v0

    :catch_4
    :goto_1
    return-object p0
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->localProperties:Ljava/util/Properties;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 87
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 90
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->propertyFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :try_start_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->localProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iget-object p0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->localProperties:Ljava/util/Properties;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "-Property"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 102
    :catch_1
    :cond_2
    throw p0

    :catch_2
    :goto_1
    if-eqz v1, :cond_3

    .line 98
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_3
    :goto_2
    return-void
.end method

.method private updateListChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 118
    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "list_changed"

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compareList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ">;)Z"
        }
    .end annotation

    .line 127
    const-string v0, "list"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->updateListChanged(Z)V

    return v2

    .line 133
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->gson:Lcom/google/gson/Gson;

    new-instance v4, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager$1;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager$1;-><init>(Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;)V

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 134
    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean;->equalsNonable(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->updateListChanged(Z)V

    return v2

    .line 138
    :cond_1
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->updateListChanged(Z)V

    return v3
.end method

.method public isListChanged()Z
    .locals 1

    .line 110
    const-string v0, "list_changed"

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 114
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method isMessagePushOpen()Z
    .locals 2

    .line 157
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "magic_elves_live_calendar_subscribe"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public updateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/livecalender/network/bean/LiveCalenderOnlineBean$LiveActivitiesOfDate;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "list"

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderLocalDataManager;->updateListChanged(Z)V

    return-void
.end method

.method updateMessagePush(Z)V
    .locals 1

    .line 165
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "magic_elves_live_calendar_subscribe"

    invoke-static {p0, v0, p1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putGlobalSettingsInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
