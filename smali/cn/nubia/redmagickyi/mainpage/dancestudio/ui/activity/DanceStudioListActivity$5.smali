.class Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;
.super Ljava/lang/Object;
.source "DanceStudioListActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

.field final synthetic val$isLowEndMobile:Z


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->val$isLowEndMobile:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 186
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 187
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->val$isLowEndMobile:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_2

    .line 189
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_2

    .line 191
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->access$801(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 196
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->access$000(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->access$901(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->access$100(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity$5;->this$0:Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;->access$200(Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/activity/DanceStudioListActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {p0, v3, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil;->rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method
