.class Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$7;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->initUserBirthData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

.field final synthetic val$birth:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;Ljava/lang/String;)V
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

    .line 417
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$7;->val$birth:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 420
    const-string/jumbo v0, "yyyy-MM-dd"

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->access$300(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$7;->val$birth:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 422
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->access$300(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$7;->val$birth:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    const-string v0, "SettingDialog"

    const-string v1, "parse birthday failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->access$300(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 429
    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->access$400(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 430
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_1

    .line 431
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 432
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$7;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->access$400(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
