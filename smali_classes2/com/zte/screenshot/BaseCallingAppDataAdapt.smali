.class abstract Lcom/zte/screenshot/BaseCallingAppDataAdapt;
.super Ljava/lang/Object;
.source "BaseCallingAppDataAdapt.java"


# static fields
.field public static final DEGREES_0:I = 0x0

.field public static final DEGREES_180:I = 0xb4

.field public static final DEGREES_270:I = 0x10e

.field public static final DEGREES_90:I = 0x5a


# instance fields
.field protected mDisplayHeight:I

.field protected mDisplayRotationDegrees:I

.field protected mDisplayWidth:I

.field protected mPressRawX:F

.field protected mPressRawY:F

.field protected mPressTwoRawX:F

.field protected mPressTwoRawY:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->mDisplayWidth:I

    .line 16
    iput v0, p0, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->mDisplayHeight:I

    .line 17
    iput v0, p0, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->mDisplayRotationDegrees:I

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->mPressRawX:F

    .line 19
    iput v0, p0, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->mPressRawY:F

    .line 20
    iput v0, p0, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->mPressTwoRawX:F

    .line 21
    iput v0, p0, Lcom/zte/screenshot/BaseCallingAppDataAdapt;->mPressTwoRawY:F

    return-void
.end method


# virtual methods
.method abstract adaptScreenRotate(Landroid/content/Context;)V
.end method

.method abstract getDegreesForRotation(I)F
.end method

.method abstract getScreenShotCropRect(I)Landroid/graphics/Rect;
.end method

.method abstract getScreenShotCropRectU(I)Landroid/graphics/Rect;
.end method

.method abstract modifyPressPoint(I)V
.end method

.method abstract tryRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method
