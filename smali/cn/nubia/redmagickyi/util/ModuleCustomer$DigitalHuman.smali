.class public Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;
.super Ljava/lang/Object;
.source "ModuleCustomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/ModuleCustomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigitalHuman"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enable()Z
    .locals 1

    .line 407
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSupportedDigitalHuman()Z

    move-result v0

    return v0
.end method
