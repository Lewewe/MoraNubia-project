.class public Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;
.super Ljava/lang/Object;
.source "AchievementLoadResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Achievement"
.end annotation


# instance fields
.field private achievement_detail_completed:Ljava/lang/String;

.field private achievement_detail_undone:Ljava/lang/String;

.field private achievement_id:I

.field private achievement_level:I

.field private achievement_name:Ljava/lang/String;

.field private achievement_point:I

.field private achievement_task_id:I

.field private achievement_type:I

.field private achievement_url:Ljava/lang/String;

.field private achievement_url_undone:Ljava/lang/String;

.field private background_url:Ljava/lang/String;

.field private card_color:Ljava/lang/String;

.field private progress_denominator:I

.field private progress_numerator:I

.field private sort_index:I

.field final synthetic this$1:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 137
    iput-object v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->this$1:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p2

    .line 138
    iput v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_id:I

    move v1, p3

    .line 139
    iput v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->sort_index:I

    move-object v1, p4

    .line 140
    iput-object v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_name:Ljava/lang/String;

    move v1, p5

    .line 141
    iput v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_task_id:I

    move-object v1, p6

    .line 142
    iput-object v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_url:Ljava/lang/String;

    move-object v1, p7

    .line 143
    iput-object v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_url_undone:Ljava/lang/String;

    move-object v1, p8

    .line 144
    iput-object v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->background_url:Ljava/lang/String;

    move v1, p9

    .line 145
    iput v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_level:I

    move v1, p10

    .line 146
    iput v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_type:I

    move-object v1, p11

    .line 147
    iput-object v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_detail_undone:Ljava/lang/String;

    move-object v1, p12

    .line 148
    iput-object v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_detail_completed:Ljava/lang/String;

    move-object v1, p13

    .line 149
    iput-object v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->card_color:Ljava/lang/String;

    move/from16 v1, p14

    .line 150
    iput v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_point:I

    move/from16 v1, p15

    .line 151
    iput v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->progress_denominator:I

    move/from16 v1, p16

    .line 152
    iput v1, v0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->progress_numerator:I

    return-void
.end method


# virtual methods
.method public getAchievement_detail_completed()Ljava/lang/String;
    .locals 0

    .line 236
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_detail_completed:Ljava/lang/String;

    return-object p0
.end method

.method public getAchievement_detail_undone()Ljava/lang/String;
    .locals 0

    .line 228
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_detail_undone:Ljava/lang/String;

    return-object p0
.end method

.method public getAchievement_id()I
    .locals 0

    .line 156
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_id:I

    return p0
.end method

.method public getAchievement_level()I
    .locals 0

    .line 212
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_level:I

    return p0
.end method

.method public getAchievement_name()Ljava/lang/String;
    .locals 0

    .line 172
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_name:Ljava/lang/String;

    return-object p0
.end method

.method public getAchievement_point()I
    .locals 0

    .line 252
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_point:I

    return p0
.end method

.method public getAchievement_task_id()I
    .locals 0

    .line 180
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_task_id:I

    return p0
.end method

.method public getAchievement_type()I
    .locals 0

    .line 220
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_type:I

    return p0
.end method

.method public getAchievement_url()Ljava/lang/String;
    .locals 0

    .line 188
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_url:Ljava/lang/String;

    return-object p0
.end method

.method public getAchievement_url_undone()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_url_undone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_url_undone:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getBackground_url()Ljava/lang/String;
    .locals 0

    .line 204
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->background_url:Ljava/lang/String;

    return-object p0
.end method

.method public getCard_color()Ljava/lang/String;
    .locals 0

    .line 244
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->card_color:Ljava/lang/String;

    return-object p0
.end method

.method public getProgress_denominator()I
    .locals 0

    .line 260
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->progress_denominator:I

    return p0
.end method

.method public getProgress_numerator()I
    .locals 0

    .line 268
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->progress_numerator:I

    return p0
.end method

.method public getSort_index()I
    .locals 0

    .line 164
    iget p0, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->sort_index:I

    return p0
.end method

.method public setAchievement_detail_completed(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_detail_completed:Ljava/lang/String;

    return-void
.end method

.method public setAchievement_detail_undone(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_detail_undone:Ljava/lang/String;

    return-void
.end method

.method public setAchievement_id(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_id:I

    return-void
.end method

.method public setAchievement_level(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_level:I

    return-void
.end method

.method public setAchievement_name(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_name:Ljava/lang/String;

    return-void
.end method

.method public setAchievement_point(I)V
    .locals 0

    .line 256
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_point:I

    return-void
.end method

.method public setAchievement_task_id(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_task_id:I

    return-void
.end method

.method public setAchievement_type(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_type:I

    return-void
.end method

.method public setAchievement_url(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_url:Ljava/lang/String;

    return-void
.end method

.method public setAchievement_url_undone(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->achievement_url_undone:Ljava/lang/String;

    return-void
.end method

.method public setBackground_url(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->background_url:Ljava/lang/String;

    return-void
.end method

.method public setCard_color(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->card_color:Ljava/lang/String;

    return-void
.end method

.method public setProgress_denominator(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->progress_denominator:I

    return-void
.end method

.method public setProgress_numerator(I)V
    .locals 0

    .line 272
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->progress_numerator:I

    return-void
.end method

.method public setSort_index(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse$UserAchievement$Achievement;->sort_index:I

    return-void
.end method
