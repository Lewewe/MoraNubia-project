.class public Lcn/nubia/redmagickyi/digitalhuman/database/Property;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;,
        Lcn/nubia/redmagickyi/digitalhuman/database/Property$String;,
        Lcn/nubia/redmagickyi/digitalhuman/database/Property$Boolean;,
        Lcn/nubia/redmagickyi/digitalhuman/database/Property$Long;
    }
.end annotation


# static fields
.field public static DIGITAL_HUMAN_SKIN_ID:Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;

    const-string v1, "prop.digitalhuman.skin.id"

    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getDefaultSkinId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/database/Property;->DIGITAL_HUMAN_SKIN_ID:Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
