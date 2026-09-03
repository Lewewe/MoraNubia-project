.class public Lcom/zte/aimodel/feature/chat/method/wenxin/ModelWenxin;
.super Ljava/lang/Object;
.source "ModelWenxin.java"

# interfaces
.implements Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;


# static fields
.field private static final TEXT_MODEL_NAME_BASE:Ljava/lang/String; = "WenxinYiyanIniTextModel"

.field private static final TEXT_MODEL_NAME_PRO:Ljava/lang/String; = "WenxinYiyanProTextModel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAIModelConstForPayment(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    const-string p0, "WenxinYiyanProTextModel"

    return-object p0

    .line 40
    :cond_1
    const-string p0, "WenxinYiyanIniTextModel"

    return-object p0
.end method

.method public getModelName(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 19
    const-string p0, "WenxinYiyanProTextModel"

    goto :goto_0

    :cond_0
    const-string p0, "WenxinYiyanIniTextModel"

    :goto_0
    return-object p0
.end method

.method public getPromptForFeatureChatByPicture(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "\u5f53\u4f60\u770b\u5230\u4e86\u4e0b\u9762\u7684\u56fe\u7247\u540e\uff0c\u627e\u5230\u753b\u9762\u4e2d\u7684\u4e3b\u4f53\u5e76\u805a\u7126\u5230\u4e3b\u4f53\u8eab\u4e0a\u3002\u7528\u4f60\u7684\u8bed\u6c14\u8ddf\u6211\u804a\u5929\u5427\uff0c\u4e0d\u8d85\u8fc780\u5b57\uff0c\u4e5f\u4e0d\u8981\u91cd\u590d\u6211\u63cf\u8ff0\u7684\u5185\u5bb9\uff0c\u4e5f\u4e0d\u8981\u63d0\u5230\"\u4e3b\u4f53\"\u3002\n"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "\u5f53\u4f60\u770b\u5230\u4e86\u4e0b\u9762\u7684\u753b\u9762\u540e\uff0c\u627e\u5230\u753b\u9762\u4e2d\u7684\u4e3b\u4f53\u5e76\u805a\u7126\u5230\u4e3b\u4f53\u8eab\u4e0a\u3002\u7528\u4f60\u7684\u8bed\u6c14\u8ddf\u6211\u804a\u5929\u5427\uff0c\u4e0d\u8d85\u8fc780\u5b57\uff0c\u4e5f\u4e0d\u8981\u91cd\u590d\u6211\u63cf\u8ff0\u7684\u5185\u5bb9\uff0c\u4e5f\u4e0d\u8981\u63d0\u5230\"\u4e3b\u4f53\"\u3002\n"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPromptForFeatureChatByText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "\u7528\u4f60\u7684\u8bed\u6c14\u56de\u5e94\u4e0b\u9762\u7684\u5185\u5bb9\u5427\uff0c\u56de\u7b54\u5c3d\u91cf\u7b80\u6d01\u3002\n"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAIModelConstForPayment(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public supportedImage2Text()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
