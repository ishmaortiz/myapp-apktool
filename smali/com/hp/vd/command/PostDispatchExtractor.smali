.class public Lcom/hp/vd/command/PostDispatchExtractor;
.super Ljava/lang/Object;
.source "PostDispatchExtractor.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "PostDispatchExtractor"


# instance fields
.field protected log:Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>(Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 24
    iput-object p1, p0, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public extract(Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/hp/vd/command/Command;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 31
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9

    const-string v4, "post_dispatch"

    .line 39
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 40
    iget-object v3, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "PostDispatchExtractor"

    const-string v5, "extract(): no post_dispatch was found in the returned JSON."

    invoke-interface {v3, v4, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v2

    :cond_0
    :try_start_1
    const-string v4, "post_dispatch"

    .line 48
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    .line 56
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    .line 60
    iget-object v3, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "PostDispatchExtractor"

    const-string v5, "extract(): response has no packages in it."

    invoke-interface {v3, v4, v5, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v2

    .line 69
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 70
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 71
    iget-object v8, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v9, "PostDispatchExtractor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Working with package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    :try_start_2
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    .line 87
    instance-of v8, v14, Lorg/json/JSONArray;

    if-nez v8, :cond_2

    .line 88
    iget-object v8, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v9, "PostDispatchExtractor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extract(): \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' is not JSONArray. Skipping it."

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v9, v6, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 93
    :cond_2
    move-object v15, v14

    check-cast v15, Lorg/json/JSONArray;

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 94
    iget-object v8, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v9, "PostDispatchExtractor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "extract(): \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' has 0 commands. Skipping it."

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v9, v6, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    move v13, v8

    .line 103
    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v13, v8, :cond_1

    .line 107
    :try_start_3
    move-object v8, v14

    check-cast v8, Lorg/json/JSONArray;

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    .line 119
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 121
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ljava/lang/String;

    .line 122
    iget-object v9, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v10, "PostDispatchExtractor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - name: "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v10, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    :try_start_4
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    const-string v8, "id"

    .line 142
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 143
    iget-object v8, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v10, "PostDispatchExtractor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - id = "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v10, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    const-string v2, "dispatch_priority"

    .line 159
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 160
    iget-object v2, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v8, "PostDispatchExtractor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v16, v3

    :try_start_7
    const-string v3, " - dispatch_priority = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v8, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    if-eqz v9, :cond_8

    if-nez v10, :cond_4

    goto/16 :goto_5

    .line 179
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "parameters"

    .line 181
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 182
    iget-object v3, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v7, "PostDispatchExtractor"

    const-string v8, " - parameters is NULL"

    invoke-interface {v3, v7, v8}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    :goto_2
    move-object/from16 v18, v4

    move/from16 v20, v13

    goto/16 :goto_4

    :cond_6
    :try_start_8
    const-string v3, "parameters"

    .line 188
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    .line 201
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-nez v7, :cond_7

    .line 202
    iget-object v3, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v7, "PostDispatchExtractor"

    const-string v8, " - parameters = none"

    invoke-interface {v3, v7, v8}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 205
    :cond_7
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 207
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 208
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 220
    :try_start_9
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    move-object/from16 v17, v3

    .line 233
    iget-object v3, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object/from16 v18, v4

    const-string v4, "PostDispatchExtractor"

    move-object/from16 v19, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v13

    const-string v13, "extract(): "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    invoke-interface {v2, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move/from16 v13, v20

    goto :goto_3

    :catch_0
    move-exception v0

    .line 223
    iget-object v2, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "PostDispatchExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extract(): could not get value for command parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". It will not proceed parsing the post_dispatch."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 v2, 0x0

    return-object v2

    .line 241
    :goto_4
    new-instance v3, Lcom/hp/vd/command/Command;

    move-object v8, v3

    move-object v11, v6

    move/from16 v4, v20

    move-object v13, v2

    invoke-direct/range {v8 .. v13}, Lcom/hp/vd/command/Command;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v18, v4

    move v4, v13

    move-object v2, v0

    .line 191
    iget-object v3, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v7, "PostDispatchExtractor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extract(): could not get command.parameters (it is not NULL) (package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", command: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "). Skipping it."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_7

    :cond_8
    :goto_5
    move-object/from16 v18, v4

    move v4, v13

    .line 174
    iget-object v2, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "PostDispatchExtractor"

    const-string v7, "extract(): (id || dispatchPriority) == null."

    const/4 v8, 0x3

    invoke-interface {v2, v3, v7, v8}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v16, v3

    :goto_6
    move-object/from16 v18, v4

    move v4, v13

    move-object v2, v0

    .line 163
    iget-object v3, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v7, "PostDispatchExtractor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extract(): could not get command.dispatch_priority (package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", command: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "). Skipping it."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move v4, v13

    move-object v2, v0

    .line 146
    iget-object v3, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v7, "PostDispatchExtractor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extract(): could not get command.id (package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", command: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "). Skipping it."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move v4, v13

    .line 130
    iget-object v2, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "PostDispatchExtractor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extract(): could not get command details (package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "). Skipping it."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3, v7, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_7

    :catch_6
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move v4, v13

    move-object v2, v0

    .line 110
    iget-object v3, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v7, "PostDispatchExtractor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extract(): could not get command for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", with index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ". Skipping it."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_7
    add-int/lit8 v13, v4, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    :catch_7
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    .line 78
    iget-object v2, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "PostDispatchExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extract(): exception caught during getting package: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Skipping it."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 255
    :cond_9
    new-instance v2, Lcom/hp/vd/command/PriorityComparator;

    invoke-direct {v2}, Lcom/hp/vd/command/PriorityComparator;-><init>()V

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v5

    :catch_8
    move-exception v0

    move-object v2, v0

    .line 51
    iget-object v3, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "PostDispatchExtractor"

    const-string v5, "extract(): Exception caught while getting field: \'post_dispatch\'."

    invoke-interface {v3, v4, v5, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 v2, 0x0

    return-object v2

    :catch_9
    move-exception v0

    move-object v3, v0

    .line 34
    iget-object v4, v1, Lcom/hp/vd/command/PostDispatchExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v5, "PostDispatchExtractor"

    const-string v6, "extract(): exception caught while decoding response."

    invoke-interface {v4, v5, v6, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v2
.end method
