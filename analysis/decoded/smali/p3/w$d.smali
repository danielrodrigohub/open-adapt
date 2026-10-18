.class public interface abstract Lp3/w$d;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# static fields
.field public static final a:Lp3/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp3/x$a;

    invoke-direct {v0}, Lp3/x$a;-><init>()V

    .line 2
    new-instance v1, Lp3/x;

    invoke-direct {v1, v0}, Lp3/x;-><init>(Lp3/x$a;)V

    .line 3
    sput-object v1, Lp3/w$d;->a:Lp3/x;

    return-void
.end method
