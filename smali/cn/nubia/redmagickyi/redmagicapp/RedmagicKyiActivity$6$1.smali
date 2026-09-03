.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6$1;
.super Ljava/lang/Object;
.source "RedmagicKyiActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 634
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 638
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;->val$shortcutMananger:Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6$1;->this$1:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;

    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;->val$context:Landroid/content/Context;

    sget-object v0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->Launcher:Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;->requestPinShortcut(Landroid/content/Context;Lcn/nubia/redmagickyi/shortcut/util/Shortcut;Z)V

    :cond_0
    return-void
.end method
