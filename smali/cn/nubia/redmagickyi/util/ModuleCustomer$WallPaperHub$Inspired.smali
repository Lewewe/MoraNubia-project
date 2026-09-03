.class public Lcn/nubia/redmagickyi/util/ModuleCustomer$WallPaperHub$Inspired;
.super Ljava/lang/Object;
.source "ModuleCustomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/util/ModuleCustomer$WallPaperHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inspired"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enable()Z
    .locals 1

    .line 266
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;->enable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static final isOfflineMode()Z
    .locals 1

    .line 271
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$ChangeSkin;->isOfflineMode()Z

    move-result v0

    return v0
.end method
