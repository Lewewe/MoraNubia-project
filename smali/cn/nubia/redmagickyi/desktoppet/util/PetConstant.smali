.class public Lcn/nubia/redmagickyi/desktoppet/util/PetConstant;
.super Ljava/lang/Object;
.source "PetConstant.java"


# static fields
.field public static final SKIN_ID_ONE:I = 0x0

.field public static final SKIN_ID_TWO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PetConstant"

.field static petStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/desktoppet/util/PetConstant;->petStyleList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static init()V
    .locals 4

    .line 18
    sget-object v0, Lcn/nubia/redmagickyi/desktoppet/util/PetConstant;->petStyleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    sget-object v0, Lcn/nubia/redmagickyi/desktoppet/util/PetConstant;->petStyleList:Ljava/util/List;

    new-instance v1, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    const/4 v2, 0x0

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->tech_center_item_preview_magic_desktop_pet_style_one:I

    invoke-direct {v1, v2, v3}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
