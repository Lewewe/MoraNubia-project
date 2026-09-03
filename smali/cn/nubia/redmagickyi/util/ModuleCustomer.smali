.class public Lcn/nubia/redmagickyi/util/ModuleCustomer;
.super Ljava/lang/Object;
.source "ModuleCustomer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;,
        Lcn/nubia/redmagickyi/util/ModuleCustomer$Push;,
        Lcn/nubia/redmagickyi/util/ModuleCustomer$LiveCalender;,
        Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;,
        Lcn/nubia/redmagickyi/util/ModuleCustomer$WallPaperHub;,
        Lcn/nubia/redmagickyi/util/ModuleCustomer$TechCenter;,
        Lcn/nubia/redmagickyi/util/ModuleCustomer$ChangeSkin;,
        Lcn/nubia/redmagickyi/util/ModuleCustomer$Care;,
        Lcn/nubia/redmagickyi/util/ModuleCustomer$Live;,
        Lcn/nubia/redmagickyi/util/ModuleCustomer$ARCamera;,
        Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModuleCustomer"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcn/nubia/redmagickyi/util/ModuleCustomer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static isNeedCheckCTA()Z
    .locals 1

    .line 282
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v0

    return v0
.end method

.method public static final supportShowHidenMotion()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
