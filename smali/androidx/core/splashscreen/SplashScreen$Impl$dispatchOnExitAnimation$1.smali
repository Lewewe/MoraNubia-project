.class final Landroidx/core/splashscreen/SplashScreen$Impl$dispatchOnExitAnimation$1;
.super Ljava/lang/Object;
.source "SplashScreen.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/splashscreen/SplashScreen$Impl;->dispatchOnExitAnimation(Landroidx/core/splashscreen/SplashScreenViewProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
.field final synthetic $finalListener:Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;

.field final synthetic $splashScreenViewProvider:Landroidx/core/splashscreen/SplashScreenViewProvider;


# direct methods
.method constructor <init>(Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;Landroidx/core/splashscreen/SplashScreenViewProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/splashscreen/SplashScreen$Impl$dispatchOnExitAnimation$1;->$finalListener:Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;

    iput-object p2, p0, Landroidx/core/splashscreen/SplashScreen$Impl$dispatchOnExitAnimation$1;->$splashScreenViewProvider:Landroidx/core/splashscreen/SplashScreenViewProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 275
    iget-object v0, p0, Landroidx/core/splashscreen/SplashScreen$Impl$dispatchOnExitAnimation$1;->$finalListener:Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;

    iget-object p0, p0, Landroidx/core/splashscreen/SplashScreen$Impl$dispatchOnExitAnimation$1;->$splashScreenViewProvider:Landroidx/core/splashscreen/SplashScreenViewProvider;

    invoke-interface {v0, p0}, Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;->onSplashScreenExit(Landroidx/core/splashscreen/SplashScreenViewProvider;)V

    return-void
.end method
