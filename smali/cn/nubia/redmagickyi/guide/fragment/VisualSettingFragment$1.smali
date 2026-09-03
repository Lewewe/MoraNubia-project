.class Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$1;
.super Ljava/lang/Object;
.source "VisualSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$1;->this$0:Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment$1;->this$0:Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;->access$000(Lcn/nubia/redmagickyi/guide/fragment/VisualSettingFragment;)Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/guide/activity/RedmagicStartActivity$VisualSettings;->VisualSettings()V

    return-void
.end method
