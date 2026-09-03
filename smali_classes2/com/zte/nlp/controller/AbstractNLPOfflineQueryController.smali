.class public abstract Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;
.super Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
.source "AbstractNLPOfflineQueryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$ConfirmContentTask;,
        Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$EmptyTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController<",
        "Lcom/zte/nlp/model/NLPResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEYWORDS_NEGATIVE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEYWORDS_POSITIVE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUNCTUATION_PATTERN:Lcom/zte/regex/Pattern;


# instance fields
.field private confirmContent:Ljava/lang/String;

.field private gson:Lcom/google/gson/Gson;

.field private headTask:Lcom/zte/nlp/controller/StepTask;

.field private history:Ljava/lang/String;

.field private requestText:Ljava/lang/String;

.field private zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->KEYWORDS_POSITIVE:Ljava/util/List;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->KEYWORDS_NEGATIVE:Ljava/util/List;

    .line 79
    const-string v2, "[\\pP\\pS]"

    invoke-static {v2}, Lcom/zte/regex/Pattern;->compile(Ljava/lang/String;)Lcom/zte/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->PUNCTUATION_PATTERN:Lcom/zte/regex/Pattern;

    const/16 v2, 0x10

    .line 81
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "\u6211"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "\u4f60"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "\u554a"

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string v4, "\u7684"

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-string v4, "\u7ed9"

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const-string v4, "\u5e2e"

    const/4 v10, 0x5

    aput-object v4, v3, v10

    const/4 v4, 0x6

    const-string v11, "\u5c31"

    aput-object v11, v3, v4

    const-string v12, "\u4e86"

    const/4 v13, 0x7

    aput-object v12, v3, v13

    const-string v12, "\u80fd"

    const/16 v14, 0x8

    aput-object v12, v3, v14

    const-string v12, "\u542c"

    const/16 v15, 0x9

    aput-object v12, v3, v15

    const-string v12, "\u8bf4"

    const/16 v16, 0xa

    aput-object v12, v3, v16

    const-string v12, "\u60f3"

    const/16 v17, 0xb

    aput-object v12, v3, v17

    const-string v12, "\u66ff"

    const/16 v18, 0xc

    aput-object v12, v3, v18

    const/16 v12, 0xd

    aput-object v11, v3, v12

    const-string v11, "\u8bb2"

    const/16 v2, 0xe

    aput-object v11, v3, v2

    const-string v11, "\u5427"

    const/16 v19, 0xf

    aput-object v11, v3, v19

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 83
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    new-array v11, v2, [Ljava/lang/String;

    const-string v20, "okay"

    aput-object v20, v11, v5

    const-string v20, "ok"

    aput-object v20, v11, v6

    const-string v20, "yes"

    aput-object v20, v11, v7

    const-string v20, "\u53ef\u4ee5"

    aput-object v20, v11, v8

    const-string v20, "\u786e\u5b9a"

    aput-object v20, v11, v9

    const-string v20, "\u786e\u8ba4"

    aput-object v20, v11, v10

    const-string v20, "\u5f00\u542f"

    aput-object v20, v11, v4

    const-string v20, "\u6253\u5f00"

    aput-object v20, v11, v13

    const-string v20, "\u5f00"

    aput-object v20, v11, v14

    const-string v20, "\u8981"

    aput-object v20, v11, v15

    const-string v20, "\u662f"

    aput-object v20, v11, v16

    const-string v20, "\u597d"

    aput-object v20, v11, v17

    const-string v20, "\u5bf9"

    aput-object v20, v11, v18

    const-string v20, "\u884c"

    aput-object v20, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x10

    .line 87
    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "cancel"

    aput-object v3, v0, v5

    const-string v3, "no"

    aput-object v3, v0, v6

    const-string v3, "\u4e0d\u60f3\u8981"

    aput-object v3, v0, v7

    const-string v3, "\u4e0d\u53ef\u4ee5"

    aput-object v3, v0, v8

    const-string v3, "\u4e0d\u662f"

    aput-object v3, v0, v9

    const-string v3, "\u4e0d\u884c"

    aput-object v3, v0, v10

    const-string v3, "\u4e0d\u53ef"

    aput-object v3, v0, v4

    const-string v3, "\u4e0d\u60f3"

    aput-object v3, v0, v13

    const-string v3, "\u4e0d\u8981"

    aput-object v3, v0, v14

    const-string v3, "\u53d6\u6d88"

    aput-object v3, v0, v15

    const-string v3, "\u9000\u51fa"

    aput-object v3, v0, v16

    const-string v3, "\u5173\u95ed"

    aput-object v3, v0, v17

    const-string v3, "\u5173"

    aput-object v3, v0, v18

    const-string v3, "\u5426"

    aput-object v3, v0, v12

    const-string v3, "\u522b"

    aput-object v3, v0, v2

    const-string v2, "\u4e0d"

    aput-object v2, v0, v19

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;-><init>()V

    .line 33
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object v0, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 34
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;Ljava/lang/Object;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->confirmContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->requestText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;)Lcom/google/gson/Gson;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$500()Lcom/zte/regex/Pattern;
    .locals 1

    .line 24
    sget-object v0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->PUNCTUATION_PATTERN:Lcom/zte/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/List;
    .locals 1

    .line 24
    sget-object v0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->KEYWORDS_POSITIVE:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/List;
    .locals 1

    .line 24
    sget-object v0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->KEYWORDS_NEGATIVE:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 65
    invoke-super {p0}, Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;->cancel()V

    .line 66
    iget-object v0, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->headTask:Lcom/zte/nlp/controller/StepTask;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/zte/nlp/controller/StepTask;->cancel()V

    .line 69
    :cond_0
    iget-object p0, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-eqz p0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    :cond_1
    return-void
.end method

.method public bridge synthetic load()Lcn/nubia/redmagickyi/network/okhttp/controller/OKHttpController;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->load()Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;

    move-result-object p0

    return-object p0
.end method

.method public load()Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;
    .locals 1

    .line 39
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "requestText cannot be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->requestText:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->history:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->confirmContent:Ljava/lang/String;

    .line 46
    new-instance p1, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$ConfirmContentTask;

    new-instance p2, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$EmptyTask;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$EmptyTask;-><init>(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;Lcom/zte/nlp/controller/StepTask;)V

    invoke-direct {p1, p0, p2}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$ConfirmContentTask;-><init>(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;Lcom/zte/nlp/controller/StepTask;)V

    iput-object p1, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->headTask:Lcom/zte/nlp/controller/StepTask;

    .line 47
    iget-object p2, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-virtual {p1, p2}, Lcom/zte/nlp/controller/StepTask;->setZteTimer(Lcn/nubia/redmagickyi/util/ZTETimer;)V

    .line 48
    iget-object p1, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->headTask:Lcom/zte/nlp/controller/StepTask;

    new-instance p2, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$1;

    invoke-direct {p2, p0}, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController$1;-><init>(Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;)V

    invoke-virtual {p1, p2}, Lcom/zte/nlp/controller/StepTask;->setOnQueryCallback(Lcom/zte/nlp/controller/StepTask$OnQueryCallback;)V

    .line 59
    iget-object p1, p0, Lcom/zte/nlp/controller/AbstractNLPOfflineQueryController;->headTask:Lcom/zte/nlp/controller/StepTask;

    invoke-virtual {p1}, Lcom/zte/nlp/controller/StepTask;->load()V

    return-object p0
.end method
