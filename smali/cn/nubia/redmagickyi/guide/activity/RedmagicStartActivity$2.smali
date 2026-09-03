.class Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$2;
.super Ljava/lang/Object;
.source "RedmagicStartActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$OnIdentifyReg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->switchIdentifyFragment(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$2;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCallback(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 270
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$2;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_guide_3painting:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$2;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->pic_guide_3wording:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->SwitchImgGuide(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onHideFragment()V
    .locals 0

    return-void
.end method

.method public regnize()V
    .locals 1

    .line 259
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$2;->this$0:Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;

    const-class v0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;->access$400(Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity;Ljava/lang/Class;)V

    return-void
.end method
