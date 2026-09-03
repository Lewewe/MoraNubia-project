.class public Lcom/zte/aimodel/feature/chat/method/gemini/ModelGemini;
.super Ljava/lang/Object;
.source "ModelGemini.java"

# interfaces
.implements Lcom/zte/aimodel/feature/chat/method/base/ModelInterface;


# static fields
.field private static final MODEL_NAME:Ljava/lang/String; = "GeminiTextModel"

.field public static final PROMPT_CHAT_BY_PICTURE:Ljava/lang/String; = "After seeing the following image, identify the focus of the scene and center the conversation on it. Chat with me in your own tone, keep it under 80 words, do not repeat my description, and do not mention the word \"look\".\n"


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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getModelName(Z)Ljava/lang/String;
    .locals 0

    .line 18
    const-string p0, "GeminiTextModel"

    return-object p0
.end method

.method public getPromptForFeatureChatByPicture(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "After seeing the following image, identify the focus of the scene and center the conversation on it. Chat with me in your own tone, keep it under 80 words, do not repeat my description, and do not mention the word \"look\".\n"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPromptForFeatureChatByText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public setAIModelConstForPayment(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public supportedImage2Text()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
