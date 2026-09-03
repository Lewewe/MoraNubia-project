.class public Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/ActionRequest;
.super Ljava/lang/Object;
.source "ActionRequest.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/IChatRequest;


# instance fields
.field private actionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action_id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/ActionRequest;->type:I

    .line 19
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/ActionRequest;->actionId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/ActionRequest;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRequestMessage()Ljava/lang/String;
    .locals 1

    .line 33
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setActionId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/ActionRequest;->actionId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/gameassist/feature/chat/request/ActionRequest;->name:Ljava/lang/String;

    return-void
.end method
