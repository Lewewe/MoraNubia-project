.class public Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;
.super Ljava/lang/Object;
.source "ProxyDigitalHumanClientCallback.java"


# instance fields
.field private callback:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

.field private pid:I


# direct methods
.method public constructor <init>(ILcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;->pid:I

    .line 11
    iput-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;->callback:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    return-void
.end method


# virtual methods
.method public getCallback()Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;->callback:Lcn/nubia/redmagickyi/digitalhuman/IDigitalHumanClientCallback;

    return-object p0
.end method

.method public getPid()I
    .locals 0

    .line 15
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/ProxyDigitalHumanClientCallback;->pid:I

    return p0
.end method
