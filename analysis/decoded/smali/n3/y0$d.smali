.class public final Ln3/y0$d;
.super Ln3/y0$c;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final n:Ln3/y0$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/y0$c$a;

    invoke-direct {v0}, Ln3/y0$c$a;-><init>()V

    .line 2
    invoke-virtual {v0}, Ln3/y0$c$a;->a()Ln3/y0$d;

    move-result-object v0

    sput-object v0, Ln3/y0$d;->n:Ln3/y0$d;

    return-void
.end method

.method public constructor <init>(Ln3/y0$c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ln3/y0$c;-><init>(Ln3/y0$c$a;)V

    return-void
.end method
