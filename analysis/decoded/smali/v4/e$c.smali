.class public final Lv4/e$c;
.super Lv4/e$d;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final s:Ljava/lang/String;

.field public final t:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv4/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 1
    sget-object v2, Lu6/v;->i:Lu6/v$b;

    .line 2
    sget-object v17, Lu6/p0;->l:Lu6/p0;

    const/4 v2, 0x0

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const/16 v16, 0x0

    .line 3
    invoke-direct/range {v0 .. v17}, Lv4/e$c;-><init>(Ljava/lang/String;Lv4/e$c;Ljava/lang/String;JIJLr3/d;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lv4/e$c;Ljava/lang/String;JIJLr3/d;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lv4/e$c;",
            "Ljava/lang/String;",
            "JIJ",
            "Lr3/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZ",
            "Ljava/util/List<",
            "Lv4/e$a;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-wide/from16 v11, p12

    move-wide/from16 v13, p14

    move/from16 v15, p16

    .line 4
    invoke-direct/range {v0 .. v15}, Lv4/e$d;-><init>(Ljava/lang/String;Lv4/e$c;JIJLr3/d;Ljava/lang/String;Ljava/lang/String;JJZ)V

    move-object/from16 v1, p3

    .line 5
    iput-object v1, v0, Lv4/e$c;->s:Ljava/lang/String;

    .line 6
    invoke-static/range {p17 .. p17}, Lu6/v;->s(Ljava/util/Collection;)Lu6/v;

    move-result-object v1

    iput-object v1, v0, Lv4/e$c;->t:Lu6/v;

    return-void
.end method
