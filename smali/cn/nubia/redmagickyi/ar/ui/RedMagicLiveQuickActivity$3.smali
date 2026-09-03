.class Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$3;
.super Ljava/lang/Object;
.source "RedMagicLiveQuickActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->initLiveSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$3;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$3;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->access$102(Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;)Lcn/nubia/redmagickyi/ar/dialog/ARLiveSelectDialog;

    .line 113
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$3;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->startPcLive:Z

    if-nez v0, :cond_0

    .line 114
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$3;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->finish()V

    :cond_0
    return-void
.end method
