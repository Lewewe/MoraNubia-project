.class Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;
.super Lcom/zte/aimodel/IResponseCallback$Stub;
.source "FeaturePictureAnalyzeBytedance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance;->analyzeByJson(Ljava/lang/String;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private append:Ljava/lang/String;

.field private isEverEnd:Z

.field final synthetic this$0:Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance;

.field final synthetic val$callback:Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;

.field final synthetic val$isThePictureFromUser:Z


# direct methods
.method constructor <init>(Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance;ZLcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->this$0:Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance;

    iput-boolean p2, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->val$isThePictureFromUser:Z

    iput-object p3, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->val$callback:Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;

    invoke-direct {p0}, Lcom/zte/aimodel/IResponseCallback$Stub;-><init>()V

    .line 48
    const-string p1, ""

    iput-object p1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->append:Ljava/lang/String;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->isEverEnd:Z

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->val$callback:Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;

    invoke-interface {p0, p1}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    iget-boolean v0, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->isEverEnd:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->append:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->append:Ljava/lang/String;

    const/4 v0, 0x0

    .line 57
    const-string v2, ""

    if-eqz p2, :cond_2

    .line 58
    iput-boolean v1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->isEverEnd:Z

    .line 59
    iget-boolean p2, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->val$isThePictureFromUser:Z

    if-nez p2, :cond_1

    .line 60
    const-string p2, "\u7684\u7167\u7247"

    const-string v3, "\u7684\u753b\u9762"

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->append:Ljava/lang/String;

    .line 61
    const-string p2, "\u5f20\u7167\u7247"

    const-string v3, "\u4e2a\u753b\u9762"

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->append:Ljava/lang/String;

    .line 62
    const-string p2, "\u56fe\u7247"

    const-string v3, "\u753b\u9762"

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->append:Ljava/lang/String;

    .line 63
    const-string p2, "\u56fe\u4e2d"

    const-string v4, "\u753b\u9762\u4e2d"

    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->append:Ljava/lang/String;

    .line 64
    const-string p2, "\u622a\u56fe"

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->append:Ljava/lang/String;

    .line 65
    const-string p2, "\u81ea\u62cd"

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->append:Ljava/lang/String;

    .line 66
    const-string p2, "\u8fd1\u7167"

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->append:Ljava/lang/String;

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->append:Ljava/lang/String;

    const-string p2, "\u542c\u8d77\u6765"

    const-string v3, "\u770b\u8d77\u6765"

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->append:Ljava/lang/String;

    .line 70
    iget-object p2, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->val$callback:Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;

    invoke-interface {p2, p1, v0}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;->onSuccess(Ljava/lang/String;Z)Z

    .line 71
    iget-object p0, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->val$callback:Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;

    invoke-interface {p0, v2, v1}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;->onSuccess(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 73
    :cond_2
    iget-object p0, p0, Lcom/zte/aimodel/feature/pictureanalyze/method/bytedance/FeaturePictureAnalyzeBytedance$1;->val$callback:Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;

    invoke-interface {p0, v2, v0}, Lcom/zte/aimodel/feature/pictureanalyze/FeaturePictureAnalyze$IAnalyzeResponseCallback;->onSuccess(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
