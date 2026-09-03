.class final Landroidx/core/splashscreen/SplashScreen$Impl31$setOnExitAnimationListener$1;
.super Ljava/lang/Object;
.source "SplashScreen.kt"

# interfaces
.implements Landroid/window/SplashScreen$OnExitAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/splashscreen/SplashScreen$Impl31;->setOnExitAnimationListener(Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/window/SplashScreenView;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $exitAnimationListener:Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;

.field final synthetic this$0:Landroidx/core/splashscreen/SplashScreen$Impl31;


# direct methods
.method constructor <init>(Landroidx/core/splashscreen/SplashScreen$Impl31;Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl31$setOnExitAnimationListener$1;->this$0:Landroidx/core/splashscreen/SplashScreen$Impl31;

    iput-object p2, p0, Landroidx/core/splashscreen/SplashScreen$Impl31$setOnExitAnimationListener$1;->$exitAnimationListener:Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSplashScreenExit(Landroid/window/SplashScreenView;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    new-instance v0, Landroidx/core/splashscreen/SplashScreenViewProvider;

    iget-object v1, p0, Landroidx/core/splashscreen/SplashScreen$Impl31$setOnExitAnimationListener$1;->this$0:Landroidx/core/splashscreen/SplashScreen$Impl31;

    invoke-virtual {v1}, Landroidx/core/splashscreen/SplashScreen$Impl31;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroidx/core/splashscreen/SplashScreenViewProvider;-><init>(Landroid/window/SplashScreenView;Landroid/app/Activity;)V

    .line 339
    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreen$Impl31$setOnExitAnimationListener$1;->$exitAnimationListener:Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;

    invoke-interface {p0, v0}, Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;->onSplashScreenExit(Landroidx/core/splashscreen/SplashScreenViewProvider;)V

    return-void
.end method
