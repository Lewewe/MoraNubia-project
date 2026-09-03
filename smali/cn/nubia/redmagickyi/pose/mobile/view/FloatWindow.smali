.class public Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;
.super Ljava/lang/Object;
.source "FloatWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;,
        Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;,
        Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$OnWindowTouchListener;
    }
.end annotation


# static fields
.field private static final EDGE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "FloatWindow"

.field private static display:Landroid/view/Display;

.field private static mScreenHeight:I

.field private static mScreenWidth:I


# instance fields
.field private mAutoRotate:Z

.field private mCanDragFullScreen:Z

.field private mContentView:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

.field private mContext:Landroid/content/Context;

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mDefaultX:I

.field private mDefaultY:I

.field private mDragEnable:Z

.field private mGravity:I

.field private mIsShowing:Z

.field private mKeepScreenOn:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOnWindowTouchListener:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$OnWindowTouchListener;

.field private mScaleEnable:Z

.field private mScreenDegrees:I

.field private mTouchEnable:Z

.field private mTouchGestureDetector:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;

.field private mWindowType:I

.field private wm:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 61
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenSize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 35
    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultWidth:I

    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultHeight:I

    const v0, 0x800033

    .line 38
    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mGravity:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mIsShowing:Z

    .line 43
    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenDegrees:I

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScaleEnable:Z

    .line 50
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDragEnable:Z

    .line 52
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mAutoRotate:Z

    .line 54
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mCanDragFullScreen:Z

    .line 56
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mTouchEnable:Z

    .line 58
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mKeepScreenOn:Z

    .line 65
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wm:Landroid/view/WindowManager;

    .line 66
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    :cond_0
    const/16 v0, 0x7f6

    .line 72
    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mWindowType:I

    .line 74
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mContentView:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    .line 76
    new-instance p1, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mTouchGestureDetector:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$OnWindowTouchListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mOnWindowTouchListener:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$OnWindowTouchListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I
    .locals 0

    .line 27
    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mMinWidth:I

    return p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I
    .locals 0

    .line 27
    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mMinHeight:I

    return p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I
    .locals 0

    .line 27
    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultWidth:I

    return p0
.end method

.method static synthetic access$1202(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultWidth:I

    return p1
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I
    .locals 0

    .line 27
    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultHeight:I

    return p0
.end method

.method static synthetic access$1302(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultHeight:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mTouchGestureDetector:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScaleEnable:Z

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDragEnable:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mContentView:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateViewLayout(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private disableAnimations()V
    .locals 3

    .line 391
    const-string v0, "privateFlags"

    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 392
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    or-int/lit8 v1, v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 394
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getFlag()I
    .locals 2

    .line 411
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mCanDragFullScreen:Z

    if-eqz v0, :cond_1

    .line 412
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenDegrees()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x1000108

    goto :goto_0

    :cond_0
    const v0, 0x1000308

    goto :goto_0

    :cond_1
    const v0, 0x1000008

    .line 418
    :goto_0
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mTouchEnable:Z

    if-nez v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    .line 421
    :cond_2
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mKeepScreenOn:Z

    if-eqz p0, :cond_3

    or-int/lit16 v0, v0, 0x80

    :cond_3
    return v0
.end method

.method public static getScreenDegrees()I
    .locals 2

    .line 212
    sget-object v0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->display:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 213
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->display:Landroid/view/Display;

    .line 215
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->display:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static getScreenHeight()I
    .locals 1

    .line 228
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isScreenOriatationPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenHeight:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenWidth:I

    :goto_0
    return v0
.end method

.method private static getScreenSize()V
    .locals 4

    .line 149
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v0

    .line 150
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isScreenOriatationPortrait()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 151
    aget v1, v0, v2

    sput v1, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenWidth:I

    .line 152
    aget v0, v0, v3

    sput v0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenHeight:I

    goto :goto_0

    .line 154
    :cond_0
    aget v1, v0, v3

    sput v1, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenWidth:I

    .line 155
    aget v0, v0, v2

    sput v0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenHeight:I

    .line 166
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getScreenSize, mScreenWidth = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScreenHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getScreenWidth()I
    .locals 1

    .line 224
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isScreenOriatationPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenWidth:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenHeight:I

    :goto_0
    return v0
.end method

.method public static isScreenOriatationPortrait()Z
    .locals 2

    .line 206
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenDegrees()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updateViewLayout(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 270
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wm:Landroid/view/WindowManager;

    invoke-interface {p0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mContentView:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    if-eqz v0, :cond_0

    .line 400
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wm:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 401
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mIsShowing:Z

    :cond_0
    return-void
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 5

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 142
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 143
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mContentView:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;->getWidth()I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    add-int/2addr v2, v3

    .line 144
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v4, :cond_1

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mContentView:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;->getHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
    add-int/2addr v3, p0

    .line 145
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public isAutoRotate()Z
    .locals 0

    .line 186
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mAutoRotate:Z

    return p0
.end method

.method public isShow()Z
    .locals 0

    .line 406
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mIsShowing:Z

    return p0
.end method

.method public setAutoRotate(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mAutoRotate:Z

    return-void
.end method

.method public setCanDragFullScreen(Z)V
    .locals 0

    .line 190
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mCanDragFullScreen:Z

    return-void
.end method

.method public setDefaultPortraitSize(II)V
    .locals 1

    .line 85
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenDegrees()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenDegrees:I

    .line 86
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mAutoRotate:Z

    if-eqz v0, :cond_1

    .line 87
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->isScreenOriatationPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultWidth:I

    .line 89
    iput p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultHeight:I

    goto :goto_0

    .line 91
    :cond_0
    iput p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultWidth:I

    .line 92
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultHeight:I

    goto :goto_0

    .line 95
    :cond_1
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultWidth:I

    .line 96
    iput p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultHeight:I

    .line 98
    :goto_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultWidth:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 99
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultHeight:I

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method public setDefaultPosition(II)V
    .locals 0

    .line 103
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultX:I

    .line 104
    iput p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultY:I

    return-void
.end method

.method public setDragEnable(Z)V
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDragEnable:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mGravity:I

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mKeepScreenOn:Z

    return-void
.end method

.method public setLayout(I)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setLayout(Landroid/view/View;)V

    return-void
.end method

.method public setLayout(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 122
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mContentView:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;->addView(Landroid/view/View;)V

    .line 123
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mContentView:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    new-instance v0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$1;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)V

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;->setOnInterceptTouchListener(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView$OnInterceptTouchListener;)V

    return-void
.end method

.method public setMinSize(II)V
    .locals 0

    .line 108
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mMinWidth:I

    .line 109
    iput p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mMinHeight:I

    return-void
.end method

.method public setOnWindowTouchListener(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$OnWindowTouchListener;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mOnWindowTouchListener:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$OnWindowTouchListener;

    return-void
.end method

.method public setScaleEnable(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScaleEnable:Z

    return-void
.end method

.method public setTouchEnable(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mTouchEnable:Z

    return-void
.end method

.method public setTrustedOverlay()V
    .locals 6

    .line 429
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p0, 0x0

    new-array v5, p0, [Ljava/lang/Class;

    const-string v1, "setTrustedOverlay"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcn/nubia/redmagickyi/commonui/nubia/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public setWindowType(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mWindowType:I

    return-void
.end method

.method public show()V
    .locals 4

    .line 359
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mContentView:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    if-eqz v0, :cond_5

    .line 360
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mWindowType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 361
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 362
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getFlag()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 363
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 364
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mGravity:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 365
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultX:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 366
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultY:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 367
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 368
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultHeight:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 369
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setTrustedOverlay()V

    .line 370
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mContentView:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mIsShowing:Z

    .line 372
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v0, :cond_0

    goto/16 :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v0, v1

    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenHeight()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    if-gez v0, :cond_2

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->update()V

    .line 379
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "729"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "769"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "779"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "789"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "799"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "809"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    :cond_3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->disableAnimations()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 385
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public transformRect(IIIII)Landroid/graphics/Rect;
    .locals 9

    .line 277
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 278
    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 279
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 280
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenDegrees()I

    move-result v1

    if-eq v1, p1, :cond_c

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "before update oldDegrees = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nowDegrees = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", newRect.left = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", newRect.top = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "FloatWindow"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-nez p1, :cond_2

    if-ne v1, v2, :cond_2

    .line 285
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mAutoRotate:Z

    if-eqz v2, :cond_0

    .line 286
    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 287
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenHeight()I

    move-result p3

    sub-int/2addr p3, p5

    sub-int/2addr p3, p2

    iput p3, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    :cond_0
    add-int v2, p3, p5

    .line 289
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result v7

    if-lt v2, v7, :cond_1

    .line 290
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result p3

    sub-int/2addr p3, p4

    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 291
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenHeight()I

    move-result p3

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    iput p3, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    .line 293
    :cond_1
    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 294
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenHeight()I

    move-result p3

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    iput p3, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    :cond_2
    const/4 v7, 0x0

    if-ne p1, v2, :cond_5

    if-nez v1, :cond_5

    .line 299
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mAutoRotate:Z

    if-eqz v2, :cond_3

    .line 300
    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 301
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result p2

    sub-int/2addr p2, p4

    sub-int/2addr p2, p3

    iput p2, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    :cond_3
    add-int v2, p3, p5

    .line 303
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result v8

    if-lt v2, v8, :cond_4

    .line 304
    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 305
    iput v7, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 307
    :cond_4
    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 308
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result p2

    sub-int/2addr p2, p4

    sub-int/2addr p2, p3

    iput p2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_5
    const/4 v8, 0x3

    if-nez p1, :cond_8

    if-ne v1, v8, :cond_8

    .line 313
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mAutoRotate:Z

    if-eqz v2, :cond_6

    .line 314
    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 315
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result p2

    sub-int/2addr p2, p4

    sub-int/2addr p2, p3

    iput p2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_6
    add-int v2, p3, p5

    .line 317
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result v8

    if-lt v2, v8, :cond_7

    .line 318
    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 319
    iput v7, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 321
    :cond_7
    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 322
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result p2

    sub-int/2addr p2, p4

    sub-int/2addr p2, p3

    iput p2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_8
    if-ne p1, v8, :cond_b

    if-nez v1, :cond_b

    .line 327
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mAutoRotate:Z

    if-eqz v2, :cond_9

    .line 328
    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 329
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenHeight()I

    move-result p3

    sub-int/2addr p3, p5

    sub-int/2addr p3, p2

    iput p3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_9
    add-int v2, p3, p5

    .line 331
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result v7

    if-lt v2, v7, :cond_a

    .line 332
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result p3

    sub-int/2addr p3, p4

    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 333
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenHeight()I

    move-result p3

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    iput p3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 335
    :cond_a
    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 336
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenHeight()I

    move-result p3

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 344
    :cond_b
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "after update oldDegrees = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v1, :cond_e

    const/4 p2, 0x2

    if-eq p1, p2, :cond_e

    .line 346
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mAutoRotate:Z

    if-nez p0, :cond_d

    goto :goto_1

    .line 351
    :cond_d
    iget p0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p5

    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 352
    iget p0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p4

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 348
    :cond_e
    :goto_1
    iget p0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p4

    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 349
    iget p0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, p5

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    return-object v0
.end method

.method public update()V
    .locals 12

    .line 232
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenDegrees()I

    move-result v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nowDegrees = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenDegrees = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenDegrees:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FloatWindow"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenDegrees:I

    if-eq v0, v1, :cond_7

    .line 235
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getFlag()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 236
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setTrustedOverlay()V

    .line 237
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mContentView:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v1, v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateViewLayout(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;Landroid/view/WindowManager$LayoutParams;)V

    .line 239
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mAutoRotate:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v5, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    .line 241
    :goto_1
    iget v6, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenDegrees:I

    if-eqz v6, :cond_2

    if-ne v6, v3, :cond_3

    :cond_2
    move v1, v4

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    if-nez v5, :cond_6

    if-eqz v1, :cond_6

    .line 244
    :cond_5
    iget v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultWidth:I

    .line 245
    iget v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultHeight:I

    iput v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultWidth:I

    .line 246
    iput v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mDefaultHeight:I

    .line 247
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 248
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 249
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 252
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "before update mScreenDegrees = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenDegrees:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", nowDegrees = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", wmParams.x = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", wmParams.y = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v7, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenDegrees:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->transformRect(IIIII)Landroid/graphics/Rect;

    move-result-object v1

    .line 254
    iget-object v6, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 255
    iget-object v6, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "after update mScreenDegrees = "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenDegrees:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_7
    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mScreenDegrees:I

    .line 259
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mTouchGestureDetector:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;)F

    move-result v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->access$400(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;F)V

    return-void
.end method

.method public updateAlpha(I)V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateAlpha: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 137
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mContentView:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->updateViewLayout(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public updateSize(II)V
    .locals 0

    .line 264
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->setDefaultPortraitSize(II)V

    .line 265
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->mTouchGestureDetector:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->access$300(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;)F

    move-result p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->access$400(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;F)V

    return-void
.end method
