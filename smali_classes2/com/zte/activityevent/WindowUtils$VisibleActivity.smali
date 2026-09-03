.class public Lcom/zte/activityevent/WindowUtils$VisibleActivity;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/activityevent/WindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibleActivity"
.end annotation


# static fields
.field static final ACTIVITY_TYPE:Ljava/lang/String; = "activityType"

.field static final DISPLAY_ID:Ljava/lang/String; = "displayId"

.field static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field static final RESERVED:Ljava/lang/String; = "reserved"

.field static final ROOT_TASK_ID:Ljava/lang/String; = "rootTaskId"

.field static final TOP_ACTIVITY:Ljava/lang/String; = "topActivity"

.field static final WINDOW_MODE:Ljava/lang/String; = "windowMode"

.field static final WINDOW_TITLE:Ljava/lang/String; = "windowTitle"


# instance fields
.field public final mActivityType:I

.field public final mDisplayId:I

.field public final mPackageName:Ljava/lang/String;

.field public final mRootTaskId:I

.field public final mTopActivity:Ljava/lang/String;

.field public final mUid:Ljava/lang/String;

.field public final mWindowMode:I

.field public final mWindowTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mPackageName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mTopActivity:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mWindowTitle:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mUid:Ljava/lang/String;

    .line 37
    iput p5, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mWindowMode:I

    .line 38
    iput p6, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mActivityType:I

    .line 39
    iput p7, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mRootTaskId:I

    .line 40
    iput p8, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Task{mPackageName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mTopActivity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mTopActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mUid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mWindowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mWindowMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mActivityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mActivityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRootTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mRootTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/zte/activityevent/WindowUtils$VisibleActivity;->mDisplayId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
