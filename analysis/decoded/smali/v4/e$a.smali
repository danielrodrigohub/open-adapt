.class public final Lv4/e$a;
.super Lv4/e$d;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final s:Z

.field public final t:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lv4/e$c;JIJLr3/d;Ljava/lang/String;Ljava/lang/String;JJZZZ)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct/range {p0 .. p15}, Lv4/e$d;-><init>(Ljava/lang/String;Lv4/e$c;JIJLr3/d;Ljava/lang/String;Ljava/lang/String;JJZ)V

    move/from16 v1, p16

    .line 2
    iput-boolean v1, v0, Lv4/e$a;->s:Z

    move/from16 v1, p17

    .line 3
    iput-boolean v1, v0, Lv4/e$a;->t:Z

    return-void
.end method
