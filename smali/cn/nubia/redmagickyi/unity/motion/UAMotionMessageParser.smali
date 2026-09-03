.class public Lcn/nubia/redmagickyi/unity/motion/UAMotionMessageParser;
.super Ljava/lang/Object;
.source "UAMotionMessageParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UAMotionMessageParser"

.field private static audioJson:Ljava/lang/String;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/unity/motion/UAMotionMessageParser;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAudio(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    sget-object v0, Lcn/nubia/redmagickyi/unity/motion/UAMotionMessageParser;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    sput-object p0, Lcn/nubia/redmagickyi/unity/motion/UAMotionMessageParser;->audioJson:Ljava/lang/String;

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static parseMotion(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    sget-object v1, Lcn/nubia/redmagickyi/unity/motion/UAMotionMessageParser;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v2, Lcn/nubia/redmagickyi/unity/motion/UAMotionMessageParser;->audioJson:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    sget-object v2, Lcn/nubia/redmagickyi/unity/motion/UAMotionMessageParser;->audioJson:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcn/nubia/redmagickyi/unity/motion/UAMotionMessageParser;->parseMotionConfig(Ljava/lang/String;ILjava/util/List;)V

    const/4 v2, 0x0

    .line 30
    sput-object v2, Lcn/nubia/redmagickyi/unity/motion/UAMotionMessageParser;->audioJson:Ljava/lang/String;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 33
    invoke-static {p0, v1, v0}, Lcn/nubia/redmagickyi/unity/motion/UAMotionMessageParser;->parseMotionConfig(Ljava/lang/String;ILjava/util/List;)V

    .line 35
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->insertMotion(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static parseMotionConfig(Ljava/lang/String;ILjava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 45
    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 46
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-string v7, ""

    move v8, v4

    move-object v9, v7

    .line 47
    :goto_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 48
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    .line 49
    const-string v11, "msgID"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "UAMotionMessageParser"

    if-eqz v11, :cond_0

    .line 50
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    .line 51
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "parseMotion: msgID "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_0
    const-string v11, "data"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 53
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginArray()V

    .line 54
    :goto_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 55
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 56
    :goto_2
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 57
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    .line 58
    const-string v11, "name"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 59
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 60
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "parseMotion name:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 61
    :cond_1
    const-string v11, "id"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 62
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextInt()I

    move-result v3

    .line 63
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "parseMotion id:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 64
    :cond_2
    const-string v11, "length"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 65
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v5

    .line 66
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "parseMotion length:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 67
    :cond_3
    const-string v11, "type"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 68
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextInt()I

    move-result v8

    .line 69
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "parseMotion resSubType:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 72
    :cond_4
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_2

    :cond_5
    if-nez v0, :cond_7

    rsub-int/lit8 v10, v8, -0x1

    const/4 v11, -0x1

    if-ne v8, v11, :cond_6

    move v15, v11

    goto :goto_3

    :cond_6
    move v15, v10

    .line 80
    :goto_3
    new-instance v10, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    move-object v13, v10

    move v14, v3

    move-object/from16 v16, v9

    move-wide/from16 v17, v5

    invoke-direct/range {v13 .. v18}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;-><init>(IILjava/lang/String;D)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    const/4 v10, 0x1

    if-ne v0, v10, :cond_b

    if-nez v8, :cond_8

    move v15, v4

    goto :goto_5

    :cond_8
    if-ne v8, v10, :cond_9

    :goto_4
    move v15, v10

    goto :goto_5

    :cond_9
    const/4 v10, 0x2

    if-ne v8, v10, :cond_a

    goto :goto_4

    :cond_a
    move v15, v8

    .line 90
    :goto_5
    new-instance v10, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    move-object v13, v10

    move v14, v3

    move-object/from16 v16, v9

    move-wide/from16 v17, v5

    invoke-direct/range {v13 .. v18}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;-><init>(IILjava/lang/String;D)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_b
    :goto_6
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_1

    .line 94
    :cond_c
    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 95
    :cond_d
    const-string v11, "total"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 96
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextInt()I

    move-result v10

    .line 97
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "parseMotion: total "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 99
    :cond_e
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 102
    :cond_f
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method
