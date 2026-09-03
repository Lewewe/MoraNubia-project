.class public final Lcom/unity3d/player/i;
.super Landroid/app/Fragment;
.source "i.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 18
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unity3d/player/i;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PermissionNames"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const v0, 0x178e9

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/unity3d/player/i;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const p3, 0x178e9

    if-ne p1, p3, :cond_1

    .line 24
    array-length p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 25
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unity3d/player/i;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "PermissionNames"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 26
    invoke-virtual {p0, p1, p3}, Lcom/unity3d/player/i;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/i;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 30
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_1
    :goto_0
    return-void
.end method
