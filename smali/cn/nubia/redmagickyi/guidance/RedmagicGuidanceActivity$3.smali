.class Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$3;
.super Ljava/lang/Object;
.source "RedmagicGuidanceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$3;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$3;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->strat_right_now_layout_fg_sub:I

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 174
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$3;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$400(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->getWidth()I

    move-result v2

    mul-int/lit16 v2, v2, 0x2f8

    div-int/lit16 v2, v2, 0x492

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$3;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$500(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$3;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$400(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity$3;->this$0:Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;->access$500(Lcn/nubia/redmagickyi/guidance/RedmagicGuidanceActivity;)Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
