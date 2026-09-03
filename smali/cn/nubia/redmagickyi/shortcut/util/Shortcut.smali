.class public final enum Lcn/nubia/redmagickyi/shortcut/util/Shortcut;
.super Ljava/lang/Enum;
.source "Shortcut.java"

# interfaces
.implements Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;
.implements Lcn/nubia/redmagickyi/shortcut/util/observer/IObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/redmagickyi/shortcut/util/Shortcut;",
        ">;",
        "Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;",
        "Lcn/nubia/redmagickyi/shortcut/util/observer/IObserver;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

.field public static final enum Launcher:Lcn/nubia/redmagickyi/shortcut/util/Shortcut;


# instance fields
.field private observer:Lcn/nubia/redmagickyi/shortcut/util/observer/IObserver;

.field private value:Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;


# direct methods
.method private static synthetic $values()[Lcn/nubia/redmagickyi/shortcut/util/Shortcut;
    .locals 1

    .line 10
    sget-object v0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->Launcher:Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    filled-new-array {v0}, [Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    new-instance v1, Lcn/nubia/redmagickyi/shortcut/util/model/LauncherShortcut;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/shortcut/util/model/LauncherShortcut;-><init>()V

    new-instance v2, Lcn/nubia/redmagickyi/shortcut/util/observer/LauncherShortcutObserver;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/shortcut/util/observer/LauncherShortcutObserver;-><init>()V

    const-string v3, "Launcher"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;-><init>(Ljava/lang/String;ILcn/nubia/redmagickyi/shortcut/util/model/IShortcut;Lcn/nubia/redmagickyi/shortcut/util/observer/IObserver;)V

    sput-object v0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->Launcher:Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    .line 10
    invoke-static {}, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->$values()[Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->$VALUES:[Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcn/nubia/redmagickyi/shortcut/util/model/IShortcut;Lcn/nubia/redmagickyi/shortcut/util/observer/IObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;",
            "Lcn/nubia/redmagickyi/shortcut/util/observer/IObserver;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->value:Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;

    .line 18
    iput-object p4, p0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->observer:Lcn/nubia/redmagickyi/shortcut/util/observer/IObserver;

    return-void
.end method

.method public static findShortcutById(Ljava/lang/String;)Lcn/nubia/redmagickyi/shortcut/util/Shortcut;
    .locals 5

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->values()[Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 53
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/redmagickyi/shortcut/util/Shortcut;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 10
    const-class v0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    return-object p0
.end method

.method public static values()[Lcn/nubia/redmagickyi/shortcut/util/Shortcut;
    .locals 1

    .line 10
    sget-object v0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->$VALUES:[Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    invoke-virtual {v0}, [Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/redmagickyi/shortcut/util/Shortcut;

    return-object v0
.end method


# virtual methods
.method public getIconId()I
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->value:Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;->getIconId()I

    move-result p0

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->value:Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->value:Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->value:Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/shortcut/util/model/IShortcut;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isNeverRequestShortcut()Z
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->observer:Lcn/nubia/redmagickyi/shortcut/util/observer/IObserver;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/shortcut/util/observer/IObserver;->isNeverRequestShortcut()Z

    move-result p0

    return p0
.end method

.method public onResult(Z)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/shortcut/util/Shortcut;->observer:Lcn/nubia/redmagickyi/shortcut/util/observer/IObserver;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/shortcut/util/observer/IObserver;->onResult(Z)V

    return-void
.end method
