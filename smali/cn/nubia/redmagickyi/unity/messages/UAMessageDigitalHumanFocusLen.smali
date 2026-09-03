.class public Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;
.super Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;
.source "UAMessageDigitalHumanFocusLen.java"


# instance fields
.field moveSpeed:F

.field posx:F

.field posy:F

.field scaleValue:F

.field speed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;-><init>()V

    return-void
.end method


# virtual methods
.method public setMoveSpeed(F)V
    .locals 0

    .line 41
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;->moveSpeed:F

    return-void
.end method

.method public setPosx(F)V
    .locals 0

    .line 33
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;->posx:F

    return-void
.end method

.method public setPosy(F)V
    .locals 0

    .line 37
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;->posy:F

    return-void
.end method

.method public setScaleValue(F)V
    .locals 0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;->scaleValue:F

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 29
    iput p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;->speed:F

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .line 45
    const-class v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/gson/ExclusionStrategy;

    new-instance v3, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen$1;

    invoke-direct {v3, p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen$1;-><init>(Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;[Ljava/lang/reflect/Field;)V

    const/4 v0, 0x0

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/gson/GsonBuilder;->setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
