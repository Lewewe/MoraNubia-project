.class public interface abstract annotation Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$State;
.super Ljava/lang/Object;
.source "SharedMemoryDesc.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "State"
.end annotation


# static fields
.field public static final ACTIVE:I = 0x3

.field public static final DRAINING:I = 0x5

.field public static final ERROR:I = 0x64

.field public static final IDLE:I = 0x2

.field public static final PAUSED:I = 0x4

.field public static final STANDBY:I = 0x1
