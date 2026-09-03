.class public final enum Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;
.super Ljava/lang/Enum;
.source "PictureAnalyzeModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

.field public static final enum AIMOE:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

.field public static final enum ByteDance:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

.field public static final enum Gemini:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

.field private static currentModel:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;


# instance fields
.field private modelImpl:Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;

.field private pictureAnalyzeImpl:Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;


# direct methods
.method private static synthetic $values()[Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;
    .locals 3

    .line 12
    sget-object v0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->ByteDance:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    sget-object v1, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->Gemini:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    sget-object v2, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->AIMOE:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    filled-new-array {v0, v1, v2}, [Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    new-instance v1, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/ModelBytedance;

    invoke-direct {v1}, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/ModelBytedance;-><init>()V

    new-instance v2, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance;

    invoke-direct {v2}, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance;-><init>()V

    const-string v3, "ByteDance"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;-><init>(Ljava/lang/String;ILcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;)V

    sput-object v0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->ByteDance:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    .line 16
    new-instance v0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    new-instance v1, Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/ModelGemini;

    invoke-direct {v1}, Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/ModelGemini;-><init>()V

    new-instance v2, Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/FeaturePictureAnalyzeGemini;

    invoke-direct {v2}, Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/FeaturePictureAnalyzeGemini;-><init>()V

    const-string v3, "Gemini"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;-><init>(Ljava/lang/String;ILcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;)V

    sput-object v0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->Gemini:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    .line 18
    new-instance v0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    new-instance v1, Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/ModelAIMoe;

    invoke-direct {v1}, Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/ModelAIMoe;-><init>()V

    new-instance v2, Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/FeaturePictureAnalyzeAIMoe;

    invoke-direct {v2}, Lcom/zte/aimodel/feature/pictureanalyze/method/aimoe/FeaturePictureAnalyzeAIMoe;-><init>()V

    const-string v3, "AIMOE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;-><init>(Ljava/lang/String;ILcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;)V

    sput-object v0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->AIMOE:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    .line 12
    invoke-static {}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->$values()[Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object v0

    sput-object v0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->$VALUES:[Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;)V
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
            "Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;",
            "Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->modelImpl:Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;

    .line 33
    iput-object p4, p0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->pictureAnalyzeImpl:Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;

    return-void
.end method

.method public static getCurrent()Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;
    .locals 1

    .line 62
    sget-object v0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->currentModel:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->ByteDance:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    :cond_0
    return-object v0
.end method

.method public static of(Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;)Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;
    .locals 5

    .line 46
    invoke-static {}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->values()[Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 47
    iget-object v4, v3, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->pictureAnalyzeImpl:Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getCurrent()Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;)Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;
    .locals 5

    .line 37
    invoke-static {}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->values()[Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 38
    iget-object v4, v3, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->modelImpl:Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-static {}, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->getCurrent()Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    move-result-object p0

    return-object p0
.end method

.method public static setCurrent(Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;)V
    .locals 0

    .line 70
    sput-object p0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->currentModel:Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    const-class v0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    return-object p0
.end method

.method public static values()[Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;
    .locals 1

    .line 12
    sget-object v0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->$VALUES:[Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    invoke-virtual {v0}, [Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;

    return-object v0
.end method


# virtual methods
.method public getModelImpl()Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->modelImpl:Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;

    return-object p0
.end method

.method public getPictureAnalyzeImpl()Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/aimodel/feature/pictureanalyze/PictureAnalyzeModel;->pictureAnalyzeImpl:Lcom/zte/aimodel/feature/pictureanalyze/method/base/FeaturePictureAnalyzeInterface;

    return-object p0
.end method
