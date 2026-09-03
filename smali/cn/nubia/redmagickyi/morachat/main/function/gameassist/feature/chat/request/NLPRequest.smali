.class public Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/NLPRequest;
.super Ljava/lang/Object;
.source "NLPRequest.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/IChatRequest;


# instance fields
.field private input:Ljava/lang/String;

.field private nlpResult:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nlp"
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/NLPRequest;->type:I

    .line 18
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/NLPRequest;->input:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/NLPRequest;->nlpResult:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRequestMessage()Ljava/lang/String;
    .locals 1

    .line 32
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/NLPRequest;->input:Ljava/lang/String;

    return-void
.end method

.method public setNlpResult(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/NLPRequest;->nlpResult:Ljava/lang/String;

    return-void
.end method
