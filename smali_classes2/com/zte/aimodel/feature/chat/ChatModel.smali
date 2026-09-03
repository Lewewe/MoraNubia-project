.class public final enum Lcom/zte/aimodel/feature/chat/ChatModel;
.super Ljava/lang/Enum;
.source "ChatModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aimodel/feature/chat/ChatModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aimodel/feature/chat/ChatModel;

.field public static final enum AIMOE:Lcom/zte/aimodel/feature/chat/ChatModel;

.field public static final enum ByteDance:Lcom/zte/aimodel/feature/chat/ChatModel;

.field public static final enum Gemini:Lcom/zte/aimodel/feature/chat/ChatModel;

.field public static final enum WenXinYiYan:Lcom/zte/aimodel/feature/chat/ChatModel;

.field private static currentModel:Lcom/zte/aimodel/feature/chat/ChatModel;


# instance fields
.field private chatImpl:Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;

.field private modelImpl:Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;


# direct methods
.method private static synthetic $values()[Lcom/zte/aimodel/feature/chat/ChatModel;
    .locals 4

    .line 14
    sget-object v0, Lcom/zte/aimodel/feature/chat/ChatModel;->WenXinYiYan:Lcom/zte/aimodel/feature/chat/ChatModel;

    sget-object v1, Lcom/zte/aimodel/feature/chat/ChatModel;->ByteDance:Lcom/zte/aimodel/feature/chat/ChatModel;

    sget-object v2, Lcom/zte/aimodel/feature/chat/ChatModel;->Gemini:Lcom/zte/aimodel/feature/chat/ChatModel;

    sget-object v3, Lcom/zte/aimodel/feature/chat/ChatModel;->AIMOE:Lcom/zte/aimodel/feature/chat/ChatModel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/zte/aimodel/feature/chat/ChatModel;

    new-instance v1, Lcom/zte/aimodel/feature/chat/method/wenxin/ModelWenxin;

    invoke-direct {v1}, Lcom/zte/aimodel/feature/chat/method/wenxin/ModelWenxin;-><init>()V

    new-instance v2, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;

    invoke-direct {v2}, Lcom/zte/aimodel/feature/chat/method/wenxin/FeatureChatWenxin;-><init>()V

    const-string v3, "WenXinYiYan"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/zte/aimodel/feature/chat/ChatModel;-><init>(Ljava/lang/String;ILcom/zte/aimodel/feature/chat/method/base/ModelInterface;Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;)V

    sput-object v0, Lcom/zte/aimodel/feature/chat/ChatModel;->WenXinYiYan:Lcom/zte/aimodel/feature/chat/ChatModel;

    .line 18
    new-instance v0, Lcom/zte/aimodel/feature/chat/ChatModel;

    new-instance v1, Lcom/zte/aimodel/feature/chat/method/bytedance/ModelBytedance;

    invoke-direct {v1}, Lcom/zte/aimodel/feature/chat/method/bytedance/ModelBytedance;-><init>()V

    new-instance v2, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;

    invoke-direct {v2}, Lcom/zte/aimodel/feature/chat/method/bytedance/FeatureChatBytedance;-><init>()V

    const-string v3, "ByteDance"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/zte/aimodel/feature/chat/ChatModel;-><init>(Ljava/lang/String;ILcom/zte/aimodel/feature/chat/method/base/ModelInterface;Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;)V

    sput-object v0, Lcom/zte/aimodel/feature/chat/ChatModel;->ByteDance:Lcom/zte/aimodel/feature/chat/ChatModel;

    .line 20
    new-instance v0, Lcom/zte/aimodel/feature/chat/ChatModel;

    new-instance v1, Lcom/zte/aimodel/feature/chat/method/gemini/ModelGemini;

    invoke-direct {v1}, Lcom/zte/aimodel/feature/chat/method/gemini/ModelGemini;-><init>()V

    new-instance v2, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;

    invoke-direct {v2}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;-><init>()V

    const-string v3, "Gemini"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/zte/aimodel/feature/chat/ChatModel;-><init>(Ljava/lang/String;ILcom/zte/aimodel/feature/chat/method/base/ModelInterface;Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;)V

    sput-object v0, Lcom/zte/aimodel/feature/chat/ChatModel;->Gemini:Lcom/zte/aimodel/feature/chat/ChatModel;

    .line 22
    new-instance v0, Lcom/zte/aimodel/feature/chat/ChatModel;

    new-instance v1, Lcom/zte/aimodel/feature/chat/method/aimoe/ModelAIMoe;

    invoke-direct {v1}, Lcom/zte/aimodel/feature/chat/method/aimoe/ModelAIMoe;-><init>()V

    new-instance v2, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;

    invoke-direct {v2}, Lcom/zte/aimodel/feature/chat/method/aimoe/FeatureChatAIMoe;-><init>()V

    const-string v3, "AIMOE"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/zte/aimodel/feature/chat/ChatModel;-><init>(Ljava/lang/String;ILcom/zte/aimodel/feature/chat/method/base/ModelInterface;Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;)V

    sput-object v0, Lcom/zte/aimodel/feature/chat/ChatModel;->AIMOE:Lcom/zte/aimodel/feature/chat/ChatModel;

    .line 14
    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->$values()[Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/feature/chat/ChatModel;->$VALUES:[Lcom/zte/aimodel/feature/chat/ChatModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/zte/aimodel/feature/chat/method/base/ModelInterface;Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;",
            "Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/zte/aimodel/feature/chat/ChatModel;->modelImpl:Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;

    .line 37
    iput-object p4, p0, Lcom/zte/aimodel/feature/chat/ChatModel;->chatImpl:Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;

    return-void
.end method

.method public static getCurrent()Lcom/zte/aimodel/feature/chat/ChatModel;
    .locals 1

    .line 65
    sget-object v0, Lcom/zte/aimodel/feature/chat/ChatModel;->currentModel:Lcom/zte/aimodel/feature/chat/ChatModel;

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/aimodel/feature/chat/ChatModel;->WenXinYiYan:Lcom/zte/aimodel/feature/chat/ChatModel;

    :cond_0
    return-object v0
.end method

.method public static of(Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;)Lcom/zte/aimodel/feature/chat/ChatModel;
    .locals 5

    .line 50
    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->values()[Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 51
    iget-object v4, v3, Lcom/zte/aimodel/feature/chat/ChatModel;->chatImpl:Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->getCurrent()Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;)Lcom/zte/aimodel/feature/chat/ChatModel;
    .locals 5

    .line 41
    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->values()[Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 42
    iget-object v4, v3, Lcom/zte/aimodel/feature/chat/ChatModel;->modelImpl:Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lcom/zte/aimodel/feature/chat/ChatModel;->getCurrent()Lcom/zte/aimodel/feature/chat/ChatModel;

    move-result-object p0

    return-object p0
.end method

.method public static setCurrent(Lcom/zte/aimodel/feature/chat/ChatModel;)V
    .locals 0

    .line 73
    sput-object p0, Lcom/zte/aimodel/feature/chat/ChatModel;->currentModel:Lcom/zte/aimodel/feature/chat/ChatModel;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aimodel/feature/chat/ChatModel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 14
    const-class v0, Lcom/zte/aimodel/feature/chat/ChatModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aimodel/feature/chat/ChatModel;

    return-object p0
.end method

.method public static values()[Lcom/zte/aimodel/feature/chat/ChatModel;
    .locals 1

    .line 14
    sget-object v0, Lcom/zte/aimodel/feature/chat/ChatModel;->$VALUES:[Lcom/zte/aimodel/feature/chat/ChatModel;

    invoke-virtual {v0}, [Lcom/zte/aimodel/feature/chat/ChatModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aimodel/feature/chat/ChatModel;

    return-object v0
.end method


# virtual methods
.method public getChatImpl()Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/ChatModel;->chatImpl:Lcom/zte/aimodel/feature/chat/method/base/FeatureChatInterface;

    return-object p0
.end method

.method public getModelImpl()Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/ChatModel;->modelImpl:Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;

    return-object p0
.end method
