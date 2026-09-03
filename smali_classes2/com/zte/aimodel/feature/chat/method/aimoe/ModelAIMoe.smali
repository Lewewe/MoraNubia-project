.class public Lcom/zte/aimodel/feature/chat/method/aimoe/ModelAIMoe;
.super Ljava/lang/Object;
.source "ModelAIMoe.java"

# interfaces
.implements Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;


# static fields
.field private static final MODEL_NAME:Ljava/lang/String; = "AIMoeTextModel"


# instance fields
.field private constForPayment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/aimodel/feature/chat/method/aimoe/ModelAIMoe;->constForPayment:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAIModelConstForPayment(I)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/zte/aimodel/feature/chat/method/aimoe/ModelAIMoe;->constForPayment:Ljava/lang/String;

    return-object p0
.end method

.method public getModelName(Z)Ljava/lang/String;
    .locals 0

    .line 16
    const-string p0, "AIMoeTextModel"

    return-object p0
.end method

.method public getPromptForFeatureChatByPicture(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "\u5f53\u4f60\u770b\u5230\u4e86\u4e0b\u9762\u7684\u56fe\u7247\u540e\uff0c\u627e\u5230\u753b\u9762\u4e2d\u7684\u4e3b\u4f53\u5e76\u805a\u7126\u5230\u4e3b\u4f53\u8eab\u4e0a\u3002\u7528\u4f60\u7684\u8bed\u6c14\u8ddf\u6211\u804a\u5929\u5427\uff0c\u4e0d\u8d85\u8fc780\u5b57\uff0c\u4e5f\u4e0d\u8981\u91cd\u590d\u6211\u63cf\u8ff0\u7684\u5185\u5bb9\u3002\n"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "\u4f60\u975e\u5e38\u64c5\u957f\u6839\u636e\u753b\u9762\u627e\u5230\u8bdd\u9898\u6765\u8ddf\u7528\u6237\u804a\u5929\uff0c\u5f53\u4f60\u770b\u5230\u4e86\u4e0b\u9762\u7684\u753b\u9762\u540e\uff0c\u7528\u4f60\u7684\u8bed\u6c14\u8ddf\u6211\u804a\u5929\u5427\uff0c\u4e0d\u8d85\u8fc780\u5b57\uff0c\u4e5f\u4e0d\u8981\u91cd\u590d\u6211\u63cf\u8ff0\u7684\u5185\u5bb9\u3002\n"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPromptForFeatureChatByText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 21
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

    .line 40
    iput-object p1, p0, Lcom/zte/aimodel/feature/chat/method/aimoe/ModelAIMoe;->constForPayment:Ljava/lang/String;

    return-void
.end method

.method public supportedImage2Text()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
