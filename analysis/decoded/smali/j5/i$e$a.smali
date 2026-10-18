.class public final Lj5/i$e$a;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/i$e;->b(Lj5/i;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj5/i;


# direct methods
.method public constructor <init>(Lj5/i;)V
    .locals 0

    iput-object p1, p0, Lj5/i$e$a;->a:Lj5/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj5/i$e$a;->a:Lj5/i;

    sget-object p2, Lj5/i;->i:Lu6/o0;

    .line 2
    invoke-virtual {p1}, Lj5/i;->i()V

    return-void
.end method

.method public final onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj5/i$e$a;->a:Lj5/i;

    sget-object p2, Lj5/i;->i:Lu6/o0;

    .line 2
    invoke-virtual {p1}, Lj5/i;->i()V

    return-void
.end method
