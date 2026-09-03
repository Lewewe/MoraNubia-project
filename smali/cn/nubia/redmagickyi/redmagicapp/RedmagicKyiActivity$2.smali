.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$2;
.super Ljava/lang/Object;
.source "RedmagicKyiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->visibleRelatedView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 435
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_base:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    const-string p0, "RedmagicKyiActivity"

    const-string v0, "visibleRelatedView failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
