.class public Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;
.super Ljava/lang/Object;
.source "SkinDetailResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BotSkin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;
    }
.end annotation


# instance fields
.field private redeem_status:I

.field private rule_content:Ljava/lang/String;

.field private rule_value:I

.field private skin_code:I

.field private skin_desc:Ljava/lang/String;

.field private skin_id:I

.field private skin_item:Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;

.field private skin_name:Ljava/lang/String;

.field private skin_rule:I

.field private skin_type:I

.field private state:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->this$0:Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRedeem_status()I
    .locals 0

    .line 144
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->redeem_status:I

    return p0
.end method

.method public getRule_content()Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->rule_content:Ljava/lang/String;

    return-object p0
.end method

.method public getRule_value()I
    .locals 0

    .line 104
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->rule_value:I

    return p0
.end method

.method public getSkin_code()I
    .locals 0

    .line 72
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_code:I

    return p0
.end method

.method public getSkin_desc()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_desc:Ljava/lang/String;

    return-object p0
.end method

.method public getSkin_id()I
    .locals 0

    .line 64
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_id:I

    return p0
.end method

.method public getSkin_item()Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_item:Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;

    return-object p0
.end method

.method public getSkin_name()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_name:Ljava/lang/String;

    return-object p0
.end method

.method public getSkin_rule()I
    .locals 0

    .line 96
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_rule:I

    return p0
.end method

.method public getSkin_type()I
    .locals 0

    .line 88
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_type:I

    return p0
.end method

.method public getState()I
    .locals 0

    .line 128
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->state:I

    return p0
.end method

.method public setRedeem_status(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->redeem_status:I

    return-void
.end method

.method public setRule_content(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->rule_content:Ljava/lang/String;

    return-void
.end method

.method public setRule_value(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->rule_value:I

    return-void
.end method

.method public setSkin_code(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_code:I

    return-void
.end method

.method public setSkin_desc(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_desc:Ljava/lang/String;

    return-void
.end method

.method public setSkin_id(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_id:I

    return-void
.end method

.method public setSkin_item(Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_item:Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;

    return-void
.end method

.method public setSkin_name(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_name:Ljava/lang/String;

    return-void
.end method

.method public setSkin_rule(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_rule:I

    return-void
.end method

.method public setSkin_type(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->skin_type:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;->state:I

    return-void
.end method
