.class public Lcom/zte/aimodel/feature/pictureanalyze/method/gemini/ModelGemini;
.super Ljava/lang/Object;
.source "ModelGemini.java"

# interfaces
.implements Lcom/zte/aimodel/feature/pictureanalyze/method/base/ModelInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAIModelConstForPayment()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 0

    .line 19
    const-string p0, "GeminiPictureAnalyzeModel"

    return-object p0
.end method

.method public getPromptForFeaturePictureAnalyze(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 25
    const-string p0, "\u8fd9\u662f\u4e00\u4e2a\u753b\u9762\uff0c\u53ea\u63cf\u8ff0\u753b\u9762\u91cc\u7684\u5185\u5bb9\uff0c\u5ffd\u7565\u753b\u9762\u6a21\u7cca\u548c\u566a\u70b9\u4fe1\u606f\uff0c\u4e0d\u9700\u8981\u8868\u8fbe\u4f60\u7684\u611f\u53d7\u3002\u5f53\u65e0\u6cd5\u63cf\u8ff0\u753b\u9762\u7684\u5185\u5bb9\u65f6\u8bf7\u8bf4\"\u753b\u9762\u7684\u5185\u5bb9\u6a21\u7cca\u770b\u4e0d\u6e05\u695a\""

    return-object p0

    .line 27
    :cond_0
    const-string p0, "\u8fd9\u662f\u4e00\u4e2a\u753b\u9762\uff0c\u53ea\u63cf\u8ff0\u753b\u9762\u91cc\u7684\u5185\u5bb9\uff0c\u5ffd\u7565\u753b\u9762\u6a21\u7cca\u548c\u566a\u70b9\u4fe1\u606f\uff0c\u4e5f\u5ffd\u7565\u60ac\u6d6e\u56fe\u6807\uff0c\u4e0d\u9700\u8981\u8868\u8fbe\u4f60\u7684\u611f\u53d7\u3002\u5f53\u65e0\u6cd5\u63cf\u8ff0\u753b\u9762\u7684\u5185\u5bb9\u65f6\u8bf7\u8bf4\"\u753b\u9762\u7684\u5185\u5bb9\u6a21\u7cca\u770b\u4e0d\u6e05\u695a\""

    return-object p0
.end method

.method public setAIModelConstForPayment(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public supportedLocalFile()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
