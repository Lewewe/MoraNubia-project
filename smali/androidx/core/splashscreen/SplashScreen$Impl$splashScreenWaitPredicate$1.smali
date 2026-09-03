.class final Landroidx/core/splashscreen/SplashScreen$Impl$splashScreenWaitPredicate$1;
.super Ljava/lang/Object;
.source "SplashScreen.kt"

# interfaces
.implements Landroidx/core/splashscreen/SplashScreen$KeepOnScreenCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/splashscreen/SplashScreen$Impl;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001H\n"
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


# static fields
.field public static final INSTANCE:Landroidx/core/splashscreen/SplashScreen$Impl$splashScreenWaitPredicate$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/splashscreen/SplashScreen$Impl$splashScreenWaitPredicate$1;

    invoke-direct {v0}, Landroidx/core/splashscreen/SplashScreen$Impl$splashScreenWaitPredicate$1;-><init>()V

    sput-object v0, Landroidx/core/splashscreen/SplashScreen$Impl$splashScreenWaitPredicate$1;->INSTANCE:Landroidx/core/splashscreen/SplashScreen$Impl$splashScreenWaitPredicate$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldKeepOnScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
