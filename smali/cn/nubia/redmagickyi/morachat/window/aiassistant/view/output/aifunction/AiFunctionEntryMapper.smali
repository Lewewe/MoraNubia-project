.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;
.super Ljava/lang/Object;
.source "AiFunctionEntryMapper.java"


# static fields
.field public static final AI_INPUT:Ljava/lang/String; = "key_function_ai_input"

.field public static final AI_LIVE_TRANSLATOR:Ljava/lang/String; = "key_function_live_translator"

.field public static final AI_MEMORY:Ljava/lang/String; = "key_function_ai_memory"

.field public static final AI_MORE:Ljava/lang/String; = "key_function_more"

.field public static final AI_RECORDER:Ljava/lang/String; = "key_function_ai_recorder"

.field public static final AI_SCAM:Ljava/lang/String; = "key_function_anti_scam"

.field public static final AI_WALLPAPER:Ljava/lang/String; = "key_function_ai_wallpaper"

.field public static bitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static dataListener:Lcom/zte/aifunctions/metadata/IDataListener;

.field private static flush:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static iDataListener:Lcom/zte/aifunctions/metadata/IDataListener;

.field private static values:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->values:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->bitmaps:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper$1;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper$1;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->iDataListener:Lcom/zte/aifunctions/metadata/IDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 22
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100()Lcom/zte/aifunctions/metadata/IDataListener;
    .locals 1

    .line 22
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->dataListener:Lcom/zte/aifunctions/metadata/IDataListener;

    return-object v0
.end method

.method private static createEntry(Lcom/zte/aifunctions/metadata/entry/MetaData;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/zte/aifunctions/metadata/entry/MetaData;->getFunctionKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "key_function_ai_input"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "key_function_more"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "key_function_live_translator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "key_function_ai_memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "key_function_ai_recorder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "key_function_ai_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "key_function_anti_scam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 79
    :pswitch_0
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;->TYPE_CLICK:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->function_ai_input:I

    sget v3, Lcom/android/ZteWidget/R$drawable;->ai_writing:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;Lcom/zte/aifunctions/metadata/entry/MetaData;I[I)V

    return-object v0

    .line 85
    :pswitch_1
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;->TYPE_CLICK:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->function_ai_more:I

    sget v3, Lcom/android/ZteWidget/R$drawable;->more_vert:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;Lcom/zte/aifunctions/metadata/entry/MetaData;I[I)V

    return-object v0

    .line 83
    :pswitch_2
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;->TYPE_CLICK:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->function_ai_live_translator:I

    sget v3, Lcom/android/ZteWidget/R$drawable;->meeting_translate:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;Lcom/zte/aifunctions/metadata/entry/MetaData;I[I)V

    return-object v0

    .line 73
    :pswitch_3
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;->TYPE_CLICK:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->function_ai_anti_memory:I

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_ai_memory:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;Lcom/zte/aifunctions/metadata/entry/MetaData;I[I)V

    return-object v0

    .line 81
    :pswitch_4
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;->TYPE_CLICK:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->function_ai_recorder:I

    sget v3, Lcom/android/ZteWidget/R$drawable;->multitrack_audio:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;Lcom/zte/aifunctions/metadata/entry/MetaData;I[I)V

    return-object v0

    .line 77
    :pswitch_5
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;->TYPE_CLICK:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->function_ai_wallpaper:I

    sget v3, Lcom/android/ZteWidget/R$drawable;->wallpaper:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;Lcom/zte/aifunctions/metadata/entry/MetaData;I[I)V

    return-object v0

    .line 75
    :pswitch_6
    new-instance v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;->TYPE_CLICK:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->function_ai_anti_scam:I

    sget v3, Lcom/android/ZteWidget/R$drawable;->ai_anti_fraud:I

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry$Type;Lcom/zte/aifunctions/metadata/entry/MetaData;I[I)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e56808e -> :sswitch_6
        -0x7d77ca2e -> :sswitch_5
        -0x6811b912 -> :sswitch_4
        0x2a862731 -> :sswitch_3
        0x79bbfac6 -> :sswitch_2
        0x79f4857c -> :sswitch_1
        0x7d09e79a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createMoreMetaData()Lcom/zte/aifunctions/metadata/entry/MetaData;
    .locals 2

    .line 92
    new-instance v0, Lcom/zte/aifunctions/metadata/entry/MetaData;

    invoke-direct {v0}, Lcom/zte/aifunctions/metadata/entry/MetaData;-><init>()V

    .line 93
    const-string v1, "key_function_more"

    invoke-virtual {v0, v1}, Lcom/zte/aifunctions/metadata/entry/MetaData;->setFunctionKey(Ljava/lang/String;)V

    .line 94
    const-string v1, "com.zte.aigc"

    invoke-virtual {v0, v1}, Lcom/zte/aifunctions/metadata/entry/MetaData;->setPackageName(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lcom/zte/aifunctions/metadata/entry/MetaData;->setAvailable(Z)V

    .line 96
    const-string v1, "android.intent.action.AIGC_FUNCTIONS_LIST"

    invoke-virtual {v0, v1}, Lcom/zte/aifunctions/metadata/entry/MetaData;->setLaunchAction(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 97
    invoke-virtual {v0, v1}, Lcom/zte/aifunctions/metadata/entry/MetaData;->setLaunchFlags(I)V

    return-object v0
.end method

.method private static initValues()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-static {}, Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper;->values()Ljava/util/List;

    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/aifunctions/metadata/entry/MetaData;

    .line 60
    invoke-static {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->createEntry(Lcom/zte/aifunctions/metadata/entry/MetaData;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->createMoreMetaData()Lcom/zte/aifunctions/metadata/entry/MetaData;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->createEntry(Lcom/zte/aifunctions/metadata/entry/MetaData;)Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static registerDataSetChangedListener(Lcom/zte/aifunctions/metadata/IDataListener;)V
    .locals 0

    .line 102
    sput-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->dataListener:Lcom/zte/aifunctions/metadata/IDataListener;

    return-void
.end method

.method public static final values()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntry;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->values:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->initValues()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->values:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->iDataListener:Lcom/zte/aifunctions/metadata/IDataListener;

    invoke-static {v0}, Lcom/zte/aifunctions/metadata/AiFunctionMetaDataMapper;->registerDataSetChangedListener(Lcom/zte/aifunctions/metadata/IDataListener;)V

    .line 49
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->flush:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->values:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->values:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->initValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/output/aifunction/AiFunctionEntryMapper;->values:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
