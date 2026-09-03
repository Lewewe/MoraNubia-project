.class Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/care/utils/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingOnTouchListener"
.end annotation


# instance fields
.field private downTime:J

.field final synthetic this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

.field private x:I

.field private y:I


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/care/utils/FloatView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/care/utils/FloatView;Lcn/nubia/redmagickyi/care/utils/FloatView$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;-><init>(Lcn/nubia/redmagickyi/care/utils/FloatView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 136
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->downTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long p1, v1, v3

    if-gez p1, :cond_6

    .line 137
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$200(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->IsMuteSpecailNet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    const-string p0, "FloatView"

    const-string p1, "Muted under this network"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 142
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$300(Lcn/nubia/redmagickyi/care/utils/FloatView;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getMUTE_VOLUM_STATUS()I

    move-result p1

    const-string v1, "bubble_mute"

    if-ne p1, p2, :cond_3

    .line 143
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$000(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$000(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_2

    .line 144
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$000(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 146
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$000(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$200(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$drawable;->care_voice_unmute:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$000(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v2, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener$1;-><init>(Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 155
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$300(Lcn/nubia/redmagickyi/care/utils/FloatView;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    sget-object p1, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->MUTE_VOLUM_STATUS:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$300(Lcn/nubia/redmagickyi/care/utils/FloatView;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_3
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$000(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {v2}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$200(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$mipmap;->care_voice_mute:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$300(Lcn/nubia/redmagickyi/care/utils/FloatView;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    sget-object p1, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->MUTE_VOLUM_STATUS:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$300(Lcn/nubia/redmagickyi/care/utils/FloatView;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$200(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->IsMuteStatus(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 163
    invoke-static {p2, v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->muteVolume(ZZ)V

    goto :goto_1

    .line 165
    :cond_4
    invoke-static {p2, p2}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->muteVolume(ZZ)V

    goto :goto_1

    .line 117
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->downTime:J

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->x:I

    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;->y:I

    :cond_6
    :goto_1
    return v0
.end method
