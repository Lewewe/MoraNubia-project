.class Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;
.super Ljava/lang/Object;
.source "RedmagicKyiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;->reqAddLauncherShortcut(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shortcutMananger:Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 631
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;->val$shortcutMananger:Lcn/nubia/redmagickyi/shortcut/util/ShortcutMananger;

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 634
    new-instance v0, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;

    iget-object v1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity;

    new-instance v2, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagicKyiActivity$6;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog$OnDismissListener;)V

    .line 642
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/shortcut/view/RequestAddLauncherShortcutDialog;->show()V

    return-void
.end method
