.class public final synthetic Lcom/nike/adapt/adk/model/AdaptGestureAction$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "AdaptGestureNotification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptGestureAction$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lga/a$e;->values()[Lga/a$e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v1, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptGestureAction$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
