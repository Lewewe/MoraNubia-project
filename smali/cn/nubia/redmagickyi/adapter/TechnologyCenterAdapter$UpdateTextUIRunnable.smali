.class Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;
.super Ljava/lang/Object;
.source "TechnologyCenterAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTextUIRunnable"
.end annotation


# instance fields
.field public itemView:Landroid/view/View;

.field final synthetic this$0:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

.field public titleText:Ljava/lang/String;

.field public tvDescribe:Landroid/widget/TextView;

.field public tvTitle:Landroid/widget/TextView;

.field public tvTitleSub:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
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
            null
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->this$0:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->itemView:Landroid/view/View;

    .line 200
    iput-object p3, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitle:Landroid/widget/TextView;

    .line 201
    iput-object p4, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitleSub:Landroid/widget/TextView;

    .line 202
    iput-object p5, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvDescribe:Landroid/widget/TextView;

    .line 203
    iput-object p6, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->titleText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitleSub:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitleSub:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 214
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 215
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 216
    iget-object v1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->titleText:Ljava/lang/String;

    .line 219
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->titleText:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->titleText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitleSub:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitleSub:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    :cond_1
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->itemView:Landroid/view/View;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isTextRtl(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitle:Landroid/widget/TextView;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 230
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitleSub:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 233
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvDescribe:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    .line 235
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitle:Landroid/widget/TextView;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 236
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvTitleSub:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 239
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$UpdateTextUIRunnable;->tvDescribe:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_2
    return-void
.end method
