.class Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;
.super Ljava/lang/Object;
.source "LiveSettingsActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$OnSettingOpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->switchFragment(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCallback(ZZ)V
    .locals 0

    return-void
.end method

.method public onHideFragment()V
    .locals 0

    return-void
.end method

.method public updateAlpha(IF)V
    .locals 0

    if-nez p1, :cond_0

    .line 248
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public updatePreviewImage(ILcn/nubia/redmagickyi/ar/beans/ARImageBeans;)V
    .locals 9

    if-eqz p2, :cond_c

    .line 144
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getThumbnail_path()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v1, "image_2d_swimsuit"

    const-string v2, ""

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getThumbnail_path()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    array-length p2, v0

    const/4 v3, 0x3

    if-ne p2, v3, :cond_2

    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    aget-object v5, v0, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "LiveIcon"

    invoke-static {p2, v6, v3}, Lcn/nubia/redmagickyi/unity/util/ResUtil;->getUnityResBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    aget-object v8, v0, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v6, v3}, Lcn/nubia/redmagickyi/unity/util/ResUtil;->getUnityResBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 147
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 148
    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcn/nubia/redmagickyi/main/R$dimen;->ns_180_dp:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 149
    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 151
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2p5_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 156
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getTargetDensity()F

    move-result v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 157
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0p45_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 159
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 161
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v6, v1}, Lcn/nubia/redmagickyi/unity/util/ResUtil;->getUnityResBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p2, v1}, Lcn/nubia/redmagickyi/ar/util/BitmapUtils;->Bitmap2Drawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v6, v0}, Lcn/nubia/redmagickyi/unity/util/ResUtil;->getUnityResBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/nubia/redmagickyi/ar/util/BitmapUtils;->Bitmap2Drawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 168
    :cond_2
    const-string p2, "camera"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 170
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_207_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 172
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 174
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 175
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getTargetDensity()F

    move-result v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_3

    .line 176
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0p45_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_2

    .line 178
    :cond_3
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 180
    :goto_2
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_mobile_left_guide_img_camera:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 183
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->mobile_live_preview_camera:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_pc_left_guide_img_camera:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 185
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcn/nubia/redmagickyi/main/R$string;->mobile_live_preview_camera:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 187
    :cond_4
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 188
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->ns_180_dp:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 189
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 191
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2p5_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_3

    .line 194
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 196
    :goto_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getTargetDensity()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 197
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0p45_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_4

    .line 199
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_0_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 201
    :goto_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    const-string p2, "image_half"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 205
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_mobile_left_guide_img_half:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 206
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_pc_left_guide_img_half:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 208
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 209
    :cond_7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 211
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_mobile_left_guide_img_face:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 212
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_pc_left_guide_img_face:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 214
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 215
    :cond_8
    const-string p2, "image_2d_sleep"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 217
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_mobile_left_guide_img_sleep_ware:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 218
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_pc_left_guide_img_sleep_ware:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 220
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 221
    :cond_9
    const-string p2, "image_2d_mecha"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 223
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_mobile_left_guide_img_mecha:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 224
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_pc_left_guide_img_necha:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 226
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 227
    :cond_a
    const-string p2, "image_2d_primery"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 229
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_mobile_left_guide_img_primery:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 230
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_pc_left_guide_img_primery:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 232
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 235
    :cond_b
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_mobile_left_guide_img_face:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 236
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$mipmap;->ar_live_pc_left_guide_img_face:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 238
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/LiveSettingsActivity;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_5
    return-void
.end method
