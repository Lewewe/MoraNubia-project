.class Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$1;
.super Ljava/lang/Object;
.source "RedMagicLiveQuickActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/ar/dialog/StartLivePCDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->initLivePCDialog()V
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

    .line 75
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    .line 78
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity$1;->this$0:Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/ui/RedMagicLiveQuickActivity;->finish()V

    return-void
.end method
